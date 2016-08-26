
class CityListDataManager {

    private static var mInstance: CityListDataManager!
    static func getInstance() -> CityListDataManager {
        if nil == mInstance {
            mInstance = CityListDataManager()
        }
        
        return mInstance
    }
    
    private var mCityListData: String = ""
    
    func initData() throws {
        mCityListData = try String(contentsOfFile: FileUtility.getCityListFullPath())
    }
    
    func getCityListData() -> String {
        return mCityListData
    }
	
}
