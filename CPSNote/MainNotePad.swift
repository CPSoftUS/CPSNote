import SwiftUI
import SwiftData
import Observation

struct MainNotePad: View {

@Environment(\.modelContext) private var context

@State  var title: String
@State  var actTxt: String
@State  var sharNote = false

    var body: some View {
    
    NavigationStack {
    
				Form {

				TextField("Title", text: $title)
				.lineLimit(1)
				
			
				
					TextField("Note", text: $actTxt, axis: .vertical)
					.lineLimit(100)
					
					
			
			}.navigationTitle("CPSNote")
   .navigationBarTitleDisplayMode(.inline)
	
   .toolbarBackground(Color.clear)
   
   .toolbar {
   
   ToolbarItem(placement: .topBarTrailing)
   {
			Button("Share", action:
					{
							sharNote.toggle()
					}
					)
		
		ShareLink(item: actTxt, preview: SharePreview("\($title)"))
			{
					Text("\(actTxt)")
			}
			}
   
			}
   
   .toolbar {
   
   ToolbarItem(placement: .bottomBar)
   {
					Text("[Text Count: \(actTxt.count)]")
					.font(.system(size: 20, weight: .bold))
			}
   }
   
   
   
			}
   
   }
   }
    
#Preview {
	MainNotePad(title: "", actTxt: "")
}
