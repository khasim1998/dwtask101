%dw 2.0
//Here I Adjust DateTime Format Output 
import * from dw::core::Strings
output application/json
---
"attendance":payload.attendance map ((item, index) -> 
 item mapObject ((value, key, index1) -> 
 (key):substringBeforeLast(value, "Z") ++ "-04:00"
 )
)