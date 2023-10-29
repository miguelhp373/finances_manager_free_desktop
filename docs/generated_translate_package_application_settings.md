#Translate Package Application Settings

```config_file.rc
LANGUAGE LANG_ENGLISH, SUBLANG_DEFAULT
STRINGTABLE
BEGIN
    101, "Hello, World!"
END
```


```powershell
brcc32 your_file.rc
```