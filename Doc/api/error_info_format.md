# error info format

* **error**: error info
	* **code**: main error id
	* **desc**: main error description
	* **sub_error**: sub error info
		* **code**: sub error id
		* **desc**: sub error description
	


```
{
  "error": {
    "desc": "auth fail",
    "sub_error": {
      "desc": "auth token invalid",
      "code": 1001
    },
    "code": 1
  }
}
```