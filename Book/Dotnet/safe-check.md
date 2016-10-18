# Thread-safe variable check

I use this often as a thread safe way of executing some code once (inside MVC route constraint, in my case). Variable holds a value of 1 if check was not performed. 
Bool type is not used because Interlocked supports just ints.

```cs

private static int _isFirstTime = 1;

private void ShouldRunJustOnce()
{
    if (1 == Interlocked.Exchange(ref _isFirstTime, 0))
    {
        // code to execute
    }
}


```