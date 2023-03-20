import 'dart:io';

void main() async {
  DataFetcher fetcher = DataFetcher();

  String data = await fetcher.getData();
  print(data);
}

class DataFetcher {
  Future<String> _getDataCloud() {
    // ! get data from cloud
    sleep(Duration(seconds: 3));
    print("getting finished...");
    return Future.value("data from cloud");
  }

  Future<String> _getParseData({required String cloudData}) async {
    // ! parse cloud data
    sleep(Duration(seconds: 3));
    print("Data parsing finished.");
    return "parsed data";
  }

  Future<String> getData() async {
    String _rawCloudData = await _getDataCloud();
    String _parsedData = await _getParseData(cloudData: _rawCloudData);
    return _parsedData;
  }
}
