
class CityListDataManager {

    private static var mInstance: CityListDataManager!
    static func getInstance() -> CityListDataManager {
        if nil == mInstance {
            mInstance = CityListDataManager()
        }
        
        return mInstance
    }
    
    private var mCityListData: [UInt8]!
    
    func initData() throws {
        let path = "./Config/city_list.json"
        mCityListData = try FileUtility.readBytesFromFile(path)
    }
    
    func getCityListData() -> [UInt8] {
        return mCityListData
    }
	
}
