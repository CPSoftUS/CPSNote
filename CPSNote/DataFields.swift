import SwiftData
import Foundation

@Model
class DataFields
{
		var date: Date?
		var title: String?
		var actTxt: String?
		
	init(date: Date, title: String, actTxt: String) {
		self.date = date
		self.title = title
		self.actTxt = actTxt
	
}
}

