#include <iostream>
#include <string>
#include <assert.h>
#include <leveldb/db.h>
#include <vector>
#include "utils.h"
#include <fstream>
#include "tests.h"
#include <random>
#include <chrono>

int verbose = 0;

using namespace std;
extern std::chrono::nanoseconds n_yi;
int main(int argc, char* argv[])
{
	if (argc != 3) {
		cout << "ERROR, enter # of tests, write frequency (1-100)\n";
	}

	long int max_tests = atoi(argv[1]);
	int write_frequency = atoi(argv[2]);
	std::default_random_engine generator(time(NULL));
//	cout << generator() << endl;
	srand(time(NULL));
	std::uniform_int_distribution<int> d(0,100);
	std::uniform_int_distribution<long int> d1(0, max_tests / 100);
	if (argc == 2) {
		if (strcmp(argv[1], "-v") == 0) {
			verbose = 1;
		}
	}

	leveldb::DB *db;
	leveldb::Options options;
	options.create_if_missing = true;

	leveldb::Status status = leveldb::DB::Open(options, "mydb", &db);
	//   assert(status.ok());

	if (!status.ok()) {
		cerr << status.ToString() << endl;
		delete db;
		return 1;
	}

	std::string token;
	std::string key;

//	long int t0 = static_cast<long int> (time(NULL));
	std::chrono::nanoseconds n(0);
	cout << "value of n is " << n.count() << endl;
	std::chrono::time_point<std::chrono::system_clock> start, end;
	start = std::chrono::system_clock::now();
	std::vector<string> s;
//	end = std::chrono::system_clock::now();
	for (long int i = 0; i < max_tests; i++) {
//		int operation = d(generator);
		key = to_string(d1(generator));

		int operation = (int) rand() % 100;
		

		if (operation <= write_frequency) {
			token = to_string(d1(generator));
			status = db->Put(leveldb::WriteOptions(), key, token);
			if (!status.ok()) {
				cerr << "[ERROR]" << status.ToString() << endl;
				delete db;
				return 1;
			}
		} else {
			status = db->Get(leveldb::ReadOptions(), key, &token);
		}

/*		token = to_string(d1(generator));
		key = to_string(d1(generator));
		s.push_back(key);

		status = db->Put(leveldb::WriteOptions(), key, token);
		for (size_t j = 0; j < 100; j++) {
			status = db->Get(leveldb::ReadOptions(), key, &token);
		}
*/	}
//	long int t1 = static_cast<long int> (time(NULL));
	end = std::chrono::system_clock::now();
	auto duration = end - start;
	n += std::chrono::duration_cast<std::chrono::nanoseconds>(duration);
	cout << "Total program time is " << n.count() << endl;
	cout << "Total compaction time is xxxxxx " << n_yi.count() << endl;

	cout << "Compaction fraction is " << (double) n_yi.count() / (double) n.count() * 100 << "%" << endl;
	delete db;

	return 0;
}

