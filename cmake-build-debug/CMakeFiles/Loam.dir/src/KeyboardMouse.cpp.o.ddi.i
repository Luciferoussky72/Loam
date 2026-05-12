# 0 "/home/luciferoussky72/Documents/Loam/src/KeyboardMouse.cpp"
# 1 "/home/luciferoussky72/Documents/Loam/cmake-build-debug//"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3
# 0 "<command-line>" 2
# 1 "/home/luciferoussky72/Documents/Loam/src/KeyboardMouse.cpp"
# 1 "/home/luciferoussky72/Documents/Loam/include/loam/KeyboardMouse.hpp" 1
       

# 1 "/usr/local/include/SDL3/SDL.h" 1 3
# 34 "/usr/local/include/SDL3/SDL.h" 3
# 1 "/usr/local/include/SDL3/SDL_stdinc.h" 1 3
# 49 "/usr/local/include/SDL3/SDL_stdinc.h" 3
# 1 "/usr/local/include/SDL3/SDL_platform_defines.h" 1 3
# 50 "/usr/local/include/SDL3/SDL_stdinc.h" 2 3

# 1 "/usr/lib/gcc/x86_64-linux-gnu/16/include/stdarg.h" 1 3
# 40 "/usr/lib/gcc/x86_64-linux-gnu/16/include/stdarg.h" 3

# 40 "/usr/lib/gcc/x86_64-linux-gnu/16/include/stdarg.h" 3
typedef __builtin_va_list __gnuc_va_list;
# 104 "/usr/lib/gcc/x86_64-linux-gnu/16/include/stdarg.h" 3
typedef __gnuc_va_list va_list;
# 52 "/usr/local/include/SDL3/SDL_stdinc.h" 2 3
# 1 "/usr/include/string.h" 1 3
# 26 "/usr/include/string.h" 3
# 1 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 1 3
# 33 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 3
# 1 "/usr/include/features.h" 1 3
# 394 "/usr/include/features.h" 3
# 1 "/usr/include/features-time64.h" 1 3
# 20 "/usr/include/features-time64.h" 3
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3
# 21 "/usr/include/features-time64.h" 2 3
# 1 "/usr/include/x86_64-linux-gnu/bits/timesize.h" 1 3
# 19 "/usr/include/x86_64-linux-gnu/bits/timesize.h" 3
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3
# 20 "/usr/include/x86_64-linux-gnu/bits/timesize.h" 2 3
# 22 "/usr/include/features-time64.h" 2 3
# 395 "/usr/include/features.h" 2 3
# 502 "/usr/include/features.h" 3
# 1 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 1 3
# 576 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3
# 577 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 2 3
# 1 "/usr/include/x86_64-linux-gnu/bits/long-double.h" 1 3
# 578 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 2 3
# 503 "/usr/include/features.h" 2 3
# 526 "/usr/include/features.h" 3
# 1 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 1 3
# 10 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 3
# 1 "/usr/include/x86_64-linux-gnu/gnu/stubs-64.h" 1 3
# 11 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 2 3
# 527 "/usr/include/features.h" 2 3
# 34 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 2 3
# 27 "/usr/include/string.h" 2 3

extern "C" {




# 1 "/usr/lib/gcc/x86_64-linux-gnu/16/include/stddef.h" 1 3
# 229 "/usr/lib/gcc/x86_64-linux-gnu/16/include/stddef.h" 3
typedef long unsigned int size_t;
# 34 "/usr/include/string.h" 2 3
# 43 "/usr/include/string.h" 3
extern void *memcpy (void *__restrict __dest, const void *__restrict __src,
       size_t __n) noexcept (true) __attribute__ ((__nonnull__ (1, 2)));


extern void *memmove (void *__dest, const void *__src, size_t __n)
     noexcept (true) __attribute__ ((__nonnull__ (1, 2)));





extern void *memccpy (void *__restrict __dest, const void *__restrict __src,
        int __c, size_t __n)
    noexcept (true) __attribute__ ((__nonnull__ (1, 2))) __attribute__ ((__access__ (__write_only__, 1, 4)));




extern void *memset (void *__s, int __c, size_t __n) noexcept (true) __attribute__ ((__nonnull__ (1)));


extern int memcmp (const void *__s1, const void *__s2, size_t __n)
     noexcept (true) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 80 "/usr/include/string.h" 3
extern int __memcmpeq (const void *__s1, const void *__s2, size_t __n)
     noexcept (true) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));



extern "C++"
{
extern void *memchr (void *__s, int __c, size_t __n)
      noexcept (true) __asm ("memchr") __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern const void *memchr (const void *__s, int __c, size_t __n)
      noexcept (true) __asm ("memchr") __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 105 "/usr/include/string.h" 3
}
# 115 "/usr/include/string.h" 3
extern "C++" void *rawmemchr (void *__s, int __c)
     noexcept (true) __asm ("rawmemchr") __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern "C++" const void *rawmemchr (const void *__s, int __c)
     noexcept (true) __asm ("rawmemchr") __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));







extern "C++" void *memrchr (void *__s, int __c, size_t __n)
      noexcept (true) __asm ("memrchr") __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)))
      __attribute__ ((__access__ (__read_only__, 1, 3)));
extern "C++" const void *memrchr (const void *__s, int __c, size_t __n)
      noexcept (true) __asm ("memrchr") __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)))
      __attribute__ ((__access__ (__read_only__, 1, 3)));
# 141 "/usr/include/string.h" 3
extern char *strcpy (char *__restrict __dest, const char *__restrict __src)
     noexcept (true) __attribute__ ((__nonnull__ (1, 2)));

extern char *strncpy (char *__restrict __dest,
        const char *__restrict __src, size_t __n)
     noexcept (true) __attribute__ ((__nonnull__ (1, 2)));


extern char *strcat (char *__restrict __dest, const char *__restrict __src)
     noexcept (true) __attribute__ ((__nonnull__ (1, 2)));

extern char *strncat (char *__restrict __dest, const char *__restrict __src,
        size_t __n) noexcept (true) __attribute__ ((__nonnull__ (1, 2)));


extern int strcmp (const char *__s1, const char *__s2)
     noexcept (true) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));

extern int strncmp (const char *__s1, const char *__s2, size_t __n)
     noexcept (true) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strcoll (const char *__s1, const char *__s2)
     noexcept (true) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));

extern size_t strxfrm (char *__restrict __dest,
         const char *__restrict __src, size_t __n)
    noexcept (true) __attribute__ ((__nonnull__ (2))) __attribute__ ((__access__ (__write_only__, 1, 3)));



# 1 "/usr/include/x86_64-linux-gnu/bits/types/locale_t.h" 1 3
# 22 "/usr/include/x86_64-linux-gnu/bits/types/locale_t.h" 3
# 1 "/usr/include/x86_64-linux-gnu/bits/types/__locale_t.h" 1 3
# 27 "/usr/include/x86_64-linux-gnu/bits/types/__locale_t.h" 3
struct __locale_struct
{

  struct __locale_data *__locales[13];


  const unsigned short int *__ctype_b;
  const int *__ctype_tolower;
  const int *__ctype_toupper;


  const char *__names[13];
};

typedef struct __locale_struct *__locale_t;
# 23 "/usr/include/x86_64-linux-gnu/bits/types/locale_t.h" 2 3

typedef __locale_t locale_t;
# 173 "/usr/include/string.h" 2 3


extern int strcoll_l (const char *__s1, const char *__s2, locale_t __l)
     noexcept (true) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 3)));


extern size_t strxfrm_l (char *__dest, const char *__src, size_t __n,
    locale_t __l) noexcept (true) __attribute__ ((__nonnull__ (2, 4)))
     __attribute__ ((__access__ (__write_only__, 1, 3)));





extern char *strdup (const char *__s)
     noexcept (true) __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));






extern char *strndup (const char *__string, size_t __n)
     noexcept (true) __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));
# 224 "/usr/include/string.h" 3
extern "C++"
{
extern char *strchr (char *__s, int __c)
     noexcept (true) __asm ("strchr") __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern const char *strchr (const char *__s, int __c)
     noexcept (true) __asm ("strchr") __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 244 "/usr/include/string.h" 3
}






extern "C++"
{
extern char *strrchr (char *__s, int __c)
     noexcept (true) __asm ("strrchr") __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern const char *strrchr (const char *__s, int __c)
     noexcept (true) __asm ("strrchr") __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 271 "/usr/include/string.h" 3
}
# 281 "/usr/include/string.h" 3
extern "C++" char *strchrnul (char *__s, int __c)
     noexcept (true) __asm ("strchrnul") __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern "C++" const char *strchrnul (const char *__s, int __c)
     noexcept (true) __asm ("strchrnul") __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 293 "/usr/include/string.h" 3
extern size_t strcspn (const char *__s, const char *__reject)
     noexcept (true) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern size_t strspn (const char *__s, const char *__accept)
     noexcept (true) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern "C++"
{
extern char *strpbrk (char *__s, const char *__accept)
     noexcept (true) __asm ("strpbrk") __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern const char *strpbrk (const char *__s, const char *__accept)
     noexcept (true) __asm ("strpbrk") __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 321 "/usr/include/string.h" 3
}






extern "C++"
{
extern char *strstr (char *__haystack, const char *__needle)
     noexcept (true) __asm ("strstr") __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern const char *strstr (const char *__haystack, const char *__needle)
     noexcept (true) __asm ("strstr") __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 348 "/usr/include/string.h" 3
}







extern char *strtok (char *__restrict __s, const char *__restrict __delim)
     noexcept (true) __attribute__ ((__nonnull__ (2)));



extern char *__strtok_r (char *__restrict __s,
    const char *__restrict __delim,
    char **__restrict __save_ptr)
     noexcept (true) __attribute__ ((__nonnull__ (2, 3)));

extern char *strtok_r (char *__restrict __s, const char *__restrict __delim,
         char **__restrict __save_ptr)
     noexcept (true) __attribute__ ((__nonnull__ (2, 3)));





extern "C++" char *strcasestr (char *__haystack, const char *__needle)
     noexcept (true) __asm ("strcasestr") __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern "C++" const char *strcasestr (const char *__haystack,
         const char *__needle)
     noexcept (true) __asm ("strcasestr") __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 389 "/usr/include/string.h" 3
extern void *memmem (const void *__haystack, size_t __haystacklen,
       const void *__needle, size_t __needlelen)
     noexcept (true) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 3)))
    __attribute__ ((__access__ (__read_only__, 1, 2)))
    __attribute__ ((__access__ (__read_only__, 3, 4)));



extern void *__mempcpy (void *__restrict __dest,
   const void *__restrict __src, size_t __n)
     noexcept (true) __attribute__ ((__nonnull__ (1, 2)));
extern void *mempcpy (void *__restrict __dest,
        const void *__restrict __src, size_t __n)
     noexcept (true) __attribute__ ((__nonnull__ (1, 2)));




extern size_t strlen (const char *__s)
     noexcept (true) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));




extern size_t strnlen (const char *__string, size_t __maxlen)
     noexcept (true) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));




extern char *strerror (int __errnum) noexcept (true);
# 444 "/usr/include/string.h" 3
extern char *strerror_r (int __errnum, char *__buf, size_t __buflen)
     noexcept (true) __attribute__ ((__nonnull__ (2))) __attribute__ ((__access__ (__write_only__, 2, 3)));




extern const char *strerrordesc_np (int __err) noexcept (true);

extern const char *strerrorname_np (int __err) noexcept (true);





extern char *strerror_l (int __errnum, locale_t __l) noexcept (true);



# 1 "/usr/include/strings.h" 1 3
# 23 "/usr/include/strings.h" 3
# 1 "/usr/lib/gcc/x86_64-linux-gnu/16/include/stddef.h" 1 3
# 24 "/usr/include/strings.h" 2 3






extern "C" {



extern int bcmp (const void *__s1, const void *__s2, size_t __n)
     noexcept (true) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern void bcopy (const void *__src, void *__dest, size_t __n)
  noexcept (true) __attribute__ ((__nonnull__ (1, 2)));


extern void bzero (void *__s, size_t __n) noexcept (true) __attribute__ ((__nonnull__ (1)));



extern "C++"
{
extern char *index (char *__s, int __c)
     noexcept (true) __asm ("index") __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern const char *index (const char *__s, int __c)
     noexcept (true) __asm ("index") __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 66 "/usr/include/strings.h" 3
}







extern "C++"
{
extern char *rindex (char *__s, int __c)
     noexcept (true) __asm ("rindex") __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern const char *rindex (const char *__s, int __c)
     noexcept (true) __asm ("rindex") __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 94 "/usr/include/strings.h" 3
}
# 104 "/usr/include/strings.h" 3
extern int ffs (int __i) noexcept (true) __attribute__ ((__const__));





extern int ffsl (long int __l) noexcept (true) __attribute__ ((__const__));
__extension__ extern int ffsll (long long int __ll)
     noexcept (true) __attribute__ ((__const__));



extern int strcasecmp (const char *__s1, const char *__s2)
     noexcept (true) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strncasecmp (const char *__s1, const char *__s2, size_t __n)
     noexcept (true) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));






extern int strcasecmp_l (const char *__s1, const char *__s2, locale_t __loc)
     noexcept (true) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 3)));



extern int strncasecmp_l (const char *__s1, const char *__s2,
     size_t __n, locale_t __loc)
     noexcept (true) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 4)));


}
# 463 "/usr/include/string.h" 2 3



extern void explicit_bzero (void *__s, size_t __n) noexcept (true) __attribute__ ((__nonnull__ (1)))
    __attribute__ ((__access__ (__write_only__, 1, 2)));



extern char *strsep (char **__restrict __stringp,
       const char *__restrict __delim)
     noexcept (true) __attribute__ ((__nonnull__ (1, 2)));




extern char *strsignal (int __sig) noexcept (true);



extern const char *sigabbrev_np (int __sig) noexcept (true);


extern const char *sigdescr_np (int __sig) noexcept (true);



extern char *__stpcpy (char *__restrict __dest, const char *__restrict __src)
     noexcept (true) __attribute__ ((__nonnull__ (1, 2)));
extern char *stpcpy (char *__restrict __dest, const char *__restrict __src)
     noexcept (true) __attribute__ ((__nonnull__ (1, 2)));



extern char *__stpncpy (char *__restrict __dest,
   const char *__restrict __src, size_t __n)
     noexcept (true) __attribute__ ((__nonnull__ (1, 2)));
extern char *stpncpy (char *__restrict __dest,
        const char *__restrict __src, size_t __n)
     noexcept (true) __attribute__ ((__nonnull__ (1, 2)));




extern size_t strlcpy (char *__restrict __dest,
         const char *__restrict __src, size_t __n)
  noexcept (true) __attribute__ ((__nonnull__ (1, 2))) __attribute__ ((__access__ (__write_only__, 1, 3)));



extern size_t strlcat (char *__restrict __dest,
         const char *__restrict __src, size_t __n)
  noexcept (true) __attribute__ ((__nonnull__ (1, 2))) __attribute__ ((__access__ (__read_write__, 1, 3)));




extern int strverscmp (const char *__s1, const char *__s2)
     noexcept (true) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern char *strfry (char *__string) noexcept (true) __attribute__ ((__nonnull__ (1)));


extern void *memfrob (void *__s, size_t __n) noexcept (true) __attribute__ ((__nonnull__ (1)))
    __attribute__ ((__access__ (__read_write__, 1, 2)));







extern "C++" char *basename (char *__filename)
     noexcept (true) __asm ("basename") __attribute__ ((__nonnull__ (1)));
extern "C++" const char *basename (const char *__filename)
     noexcept (true) __asm ("basename") __attribute__ ((__nonnull__ (1)));
# 552 "/usr/include/string.h" 3
}
# 53 "/usr/local/include/SDL3/SDL_stdinc.h" 2 3
# 1 "/usr/include/wchar.h" 1 3
# 27 "/usr/include/wchar.h" 3
# 1 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 1 3
# 28 "/usr/include/wchar.h" 2 3


# 1 "/usr/include/x86_64-linux-gnu/bits/floatn.h" 1 3
# 119 "/usr/include/x86_64-linux-gnu/bits/floatn.h" 3
# 1 "/usr/include/x86_64-linux-gnu/bits/floatn-common.h" 1 3
# 24 "/usr/include/x86_64-linux-gnu/bits/floatn-common.h" 3
# 1 "/usr/include/x86_64-linux-gnu/bits/long-double.h" 1 3
# 25 "/usr/include/x86_64-linux-gnu/bits/floatn-common.h" 2 3
# 120 "/usr/include/x86_64-linux-gnu/bits/floatn.h" 2 3
# 31 "/usr/include/wchar.h" 2 3




# 1 "/usr/lib/gcc/x86_64-linux-gnu/16/include/stddef.h" 1 3
# 36 "/usr/include/wchar.h" 2 3
# 51 "/usr/include/wchar.h" 3
# 1 "/usr/include/x86_64-linux-gnu/bits/wchar.h" 1 3
# 52 "/usr/include/wchar.h" 2 3
# 1 "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h" 1 3
# 20 "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h" 3
typedef unsigned int wint_t;
# 53 "/usr/include/wchar.h" 2 3
# 1 "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h" 1 3



# 1 "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h" 1 3
# 13 "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h" 3
typedef struct
{
  int __count;
  union
  {
    unsigned int __wch;
    char __wchb[4];
  } __value;
} __mbstate_t;
# 5 "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h" 2 3

typedef __mbstate_t mbstate_t;
# 54 "/usr/include/wchar.h" 2 3
# 1 "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h" 1 3



struct _IO_FILE;
typedef struct _IO_FILE __FILE;
# 55 "/usr/include/wchar.h" 2 3


# 1 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h" 1 3



struct _IO_FILE;


typedef struct _IO_FILE FILE;
# 58 "/usr/include/wchar.h" 2 3
# 90 "/usr/include/wchar.h" 3
extern "C" {



struct tm;



extern wchar_t *wcscpy (wchar_t *__restrict __dest,
   const wchar_t *__restrict __src)
     noexcept (true) __attribute__ ((__nonnull__ (1, 2)));


extern wchar_t *wcsncpy (wchar_t *__restrict __dest,
    const wchar_t *__restrict __src, size_t __n)
     noexcept (true) __attribute__ ((__nonnull__ (1, 2)));



extern size_t wcslcpy (wchar_t *__restrict __dest,
         const wchar_t *__restrict __src, size_t __n)
  noexcept (true) __attribute__ ((__nonnull__ (1, 2))) __attribute__ ((__access__ (__write_only__, 1, 3)));



extern size_t wcslcat (wchar_t *__restrict __dest,
         const wchar_t *__restrict __src, size_t __n)
  noexcept (true) __attribute__ ((__nonnull__ (1, 2))) __attribute__ ((__access__ (__read_write__, 1, 3)));



extern wchar_t *wcscat (wchar_t *__restrict __dest,
   const wchar_t *__restrict __src)
     noexcept (true) __attribute__ ((__nonnull__ (1, 2)));

extern wchar_t *wcsncat (wchar_t *__restrict __dest,
    const wchar_t *__restrict __src, size_t __n)
     noexcept (true) __attribute__ ((__nonnull__ (1, 2)));


extern int wcscmp (const wchar_t *__s1, const wchar_t *__s2)
     noexcept (true) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));

extern int wcsncmp (const wchar_t *__s1, const wchar_t *__s2, size_t __n)
     noexcept (true) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));



extern int wcscasecmp (const wchar_t *__s1, const wchar_t *__s2) noexcept (true);


extern int wcsncasecmp (const wchar_t *__s1, const wchar_t *__s2,
   size_t __n) noexcept (true);



extern int wcscasecmp_l (const wchar_t *__s1, const wchar_t *__s2,
    locale_t __loc) noexcept (true);

extern int wcsncasecmp_l (const wchar_t *__s1, const wchar_t *__s2,
     size_t __n, locale_t __loc) noexcept (true);




extern int wcscoll (const wchar_t *__s1, const wchar_t *__s2) noexcept (true);



extern size_t wcsxfrm (wchar_t *__restrict __s1,
         const wchar_t *__restrict __s2, size_t __n) noexcept (true);







extern int wcscoll_l (const wchar_t *__s1, const wchar_t *__s2,
        locale_t __loc) noexcept (true);




extern size_t wcsxfrm_l (wchar_t *__s1, const wchar_t *__s2,
    size_t __n, locale_t __loc) noexcept (true);


extern wchar_t *wcsdup (const wchar_t *__s) noexcept (true)
  __attribute__ ((__malloc__)) __attribute__ ((__malloc__ (__builtin_free, 1)));




extern "C++" wchar_t *wcschr (wchar_t *__wcs, wchar_t __wc)
     noexcept (true) __asm ("wcschr") __attribute__ ((__pure__));
extern "C++" const wchar_t *wcschr (const wchar_t *__wcs, wchar_t __wc)
     noexcept (true) __asm ("wcschr") __attribute__ ((__pure__));






extern "C++" wchar_t *wcsrchr (wchar_t *__wcs, wchar_t __wc)
     noexcept (true) __asm ("wcsrchr") __attribute__ ((__pure__));
extern "C++" const wchar_t *wcsrchr (const wchar_t *__wcs, wchar_t __wc)
     noexcept (true) __asm ("wcsrchr") __attribute__ ((__pure__));
# 206 "/usr/include/wchar.h" 3
extern wchar_t *wcschrnul (const wchar_t *__s, wchar_t __wc)
     noexcept (true) __attribute__ ((__pure__));




extern size_t wcscspn (const wchar_t *__wcs, const wchar_t *__reject)
     noexcept (true) __attribute__ ((__pure__));


extern size_t wcsspn (const wchar_t *__wcs, const wchar_t *__accept)
     noexcept (true) __attribute__ ((__pure__));


extern "C++" wchar_t *wcspbrk (wchar_t *__wcs, const wchar_t *__accept)
     noexcept (true) __asm ("wcspbrk") __attribute__ ((__pure__));
extern "C++" const wchar_t *wcspbrk (const wchar_t *__wcs,
         const wchar_t *__accept)
     noexcept (true) __asm ("wcspbrk") __attribute__ ((__pure__));






extern "C++" wchar_t *wcsstr (wchar_t *__haystack, const wchar_t *__needle)
     noexcept (true) __asm ("wcsstr") __attribute__ ((__pure__));
extern "C++" const wchar_t *wcsstr (const wchar_t *__haystack,
        const wchar_t *__needle)
     noexcept (true) __asm ("wcsstr") __attribute__ ((__pure__));






extern wchar_t *wcstok (wchar_t *__restrict __s,
   const wchar_t *__restrict __delim,
   wchar_t **__restrict __ptr) noexcept (true);


extern size_t wcslen (const wchar_t *__s) noexcept (true) __attribute__ ((__pure__));




extern "C++" wchar_t *wcswcs (wchar_t *__haystack, const wchar_t *__needle)
     noexcept (true) __asm ("wcswcs") __attribute__ ((__pure__));
extern "C++" const wchar_t *wcswcs (const wchar_t *__haystack,
        const wchar_t *__needle)
     noexcept (true) __asm ("wcswcs") __attribute__ ((__pure__));
# 265 "/usr/include/wchar.h" 3
extern size_t wcsnlen (const wchar_t *__s, size_t __maxlen)
     noexcept (true) __attribute__ ((__pure__));





extern "C++" wchar_t *wmemchr (wchar_t *__s, wchar_t __c, size_t __n)
     noexcept (true) __asm ("wmemchr") __attribute__ ((__pure__));
extern "C++" const wchar_t *wmemchr (const wchar_t *__s, wchar_t __c,
         size_t __n)
     noexcept (true) __asm ("wmemchr") __attribute__ ((__pure__));






extern int wmemcmp (const wchar_t *__s1, const wchar_t *__s2, size_t __n)
     noexcept (true) __attribute__ ((__pure__));


extern wchar_t *wmemcpy (wchar_t *__restrict __s1,
    const wchar_t *__restrict __s2, size_t __n) noexcept (true);



extern wchar_t *wmemmove (wchar_t *__s1, const wchar_t *__s2, size_t __n)
     noexcept (true);


extern wchar_t *wmemset (wchar_t *__s, wchar_t __c, size_t __n) noexcept (true);




extern wchar_t *wmempcpy (wchar_t *__restrict __s1,
     const wchar_t *__restrict __s2, size_t __n)
     noexcept (true);





extern wint_t btowc (int __c) noexcept (true);



extern int wctob (wint_t __c) noexcept (true);



extern int mbsinit (const mbstate_t *__ps) noexcept (true) __attribute__ ((__pure__));



extern size_t mbrtowc (wchar_t *__restrict __pwc,
         const char *__restrict __s, size_t __n,
         mbstate_t *__restrict __p) noexcept (true);


extern size_t wcrtomb (char *__restrict __s, wchar_t __wc,
         mbstate_t *__restrict __ps) noexcept (true);


extern size_t __mbrlen (const char *__restrict __s, size_t __n,
   mbstate_t *__restrict __ps) noexcept (true);
extern size_t mbrlen (const char *__restrict __s, size_t __n,
        mbstate_t *__restrict __ps) noexcept (true);
# 362 "/usr/include/wchar.h" 3
extern size_t mbsrtowcs (wchar_t *__restrict __dst,
    const char **__restrict __src, size_t __len,
    mbstate_t *__restrict __ps) noexcept (true);



extern size_t wcsrtombs (char *__restrict __dst,
    const wchar_t **__restrict __src, size_t __len,
    mbstate_t *__restrict __ps) noexcept (true);





extern size_t mbsnrtowcs (wchar_t *__restrict __dst,
     const char **__restrict __src, size_t __nmc,
     size_t __len, mbstate_t *__restrict __ps) noexcept (true);



extern size_t wcsnrtombs (char *__restrict __dst,
     const wchar_t **__restrict __src,
     size_t __nwc, size_t __len,
     mbstate_t *__restrict __ps) noexcept (true);






extern int wcwidth (wchar_t __c) noexcept (true);



extern int wcswidth (const wchar_t *__s, size_t __n) noexcept (true);





extern double wcstod (const wchar_t *__restrict __nptr,
        wchar_t **__restrict __endptr) noexcept (true);



extern float wcstof (const wchar_t *__restrict __nptr,
       wchar_t **__restrict __endptr) noexcept (true);
extern long double wcstold (const wchar_t *__restrict __nptr,
       wchar_t **__restrict __endptr) noexcept (true);
# 422 "/usr/include/wchar.h" 3
extern _Float32 wcstof32 (const wchar_t *__restrict __nptr,
     wchar_t **__restrict __endptr) noexcept (true);



extern _Float64 wcstof64 (const wchar_t *__restrict __nptr,
     wchar_t **__restrict __endptr) noexcept (true);



extern _Float128 wcstof128 (const wchar_t *__restrict __nptr,
       wchar_t **__restrict __endptr) noexcept (true);



extern _Float32x wcstof32x (const wchar_t *__restrict __nptr,
       wchar_t **__restrict __endptr) noexcept (true);



extern _Float64x wcstof64x (const wchar_t *__restrict __nptr,
       wchar_t **__restrict __endptr) noexcept (true);
# 455 "/usr/include/wchar.h" 3
extern long int wcstol (const wchar_t *__restrict __nptr,
   wchar_t **__restrict __endptr, int __base) noexcept (true);



extern unsigned long int wcstoul (const wchar_t *__restrict __nptr,
      wchar_t **__restrict __endptr, int __base)
     noexcept (true);




__extension__
extern long long int wcstoll (const wchar_t *__restrict __nptr,
         wchar_t **__restrict __endptr, int __base)
     noexcept (true);



__extension__
extern unsigned long long int wcstoull (const wchar_t *__restrict __nptr,
     wchar_t **__restrict __endptr,
     int __base) noexcept (true);





__extension__
extern long long int wcstoq (const wchar_t *__restrict __nptr,
        wchar_t **__restrict __endptr, int __base)
     noexcept (true);



__extension__
extern unsigned long long int wcstouq (const wchar_t *__restrict __nptr,
           wchar_t **__restrict __endptr,
           int __base) noexcept (true);






extern long int wcstol (const wchar_t *__restrict __nptr, wchar_t **__restrict __endptr, int __base) noexcept (true) __asm__ ("" "__isoc23_wcstol")

                                   ;
extern unsigned long int wcstoul (const wchar_t *__restrict __nptr, wchar_t **__restrict __endptr, int __base) noexcept (true) __asm__ ("" "__isoc23_wcstoul")


                                     ;
__extension__
extern long long int wcstoll (const wchar_t *__restrict __nptr, wchar_t **__restrict __endptr, int __base) noexcept (true) __asm__ ("" "__isoc23_wcstoll")


                                        ;
__extension__
extern unsigned long long int wcstoull (const wchar_t *__restrict __nptr, wchar_t **__restrict __endptr, int __base) noexcept (true) __asm__ ("" "__isoc23_wcstoull")


                                           ;

__extension__
extern long long int wcstoq (const wchar_t *__restrict __nptr, wchar_t **__restrict __endptr, int __base) noexcept (true) __asm__ ("" "__isoc23_wcstoll")

                                         ;
__extension__
extern unsigned long long int wcstouq (const wchar_t *__restrict __nptr, wchar_t **__restrict __endptr, int __base) noexcept (true) __asm__ ("" "__isoc23_wcstoull")


                                           ;
# 561 "/usr/include/wchar.h" 3
extern long int wcstol_l (const wchar_t *__restrict __nptr,
     wchar_t **__restrict __endptr, int __base,
     locale_t __loc) noexcept (true);

extern unsigned long int wcstoul_l (const wchar_t *__restrict __nptr,
        wchar_t **__restrict __endptr,
        int __base, locale_t __loc) noexcept (true);

__extension__
extern long long int wcstoll_l (const wchar_t *__restrict __nptr,
    wchar_t **__restrict __endptr,
    int __base, locale_t __loc) noexcept (true);

__extension__
extern unsigned long long int wcstoull_l (const wchar_t *__restrict __nptr,
       wchar_t **__restrict __endptr,
       int __base, locale_t __loc)
     noexcept (true);





extern long int wcstol_l (const wchar_t *__restrict __nptr, wchar_t **__restrict __endptr, int __base, locale_t __loc) noexcept (true) __asm__ ("" "__isoc23_wcstol_l")


                      ;
extern unsigned long int wcstoul_l (const wchar_t *__restrict __nptr, wchar_t **__restrict __endptr, int __base, locale_t __loc) noexcept (true) __asm__ ("" "__isoc23_wcstoul_l")



                         ;
__extension__
extern long long int wcstoll_l (const wchar_t *__restrict __nptr, wchar_t **__restrict __endptr, int __base, locale_t __loc) noexcept (true) __asm__ ("" "__isoc23_wcstoll_l")



                            ;
__extension__
extern unsigned long long int wcstoull_l (const wchar_t *__restrict __nptr, wchar_t **__restrict __endptr, int __base, locale_t __loc) noexcept (true) __asm__ ("" "__isoc23_wcstoull_l")



                               ;
# 630 "/usr/include/wchar.h" 3
extern double wcstod_l (const wchar_t *__restrict __nptr,
   wchar_t **__restrict __endptr, locale_t __loc)
     noexcept (true);

extern float wcstof_l (const wchar_t *__restrict __nptr,
         wchar_t **__restrict __endptr, locale_t __loc)
     noexcept (true);

extern long double wcstold_l (const wchar_t *__restrict __nptr,
         wchar_t **__restrict __endptr,
         locale_t __loc) noexcept (true);
# 649 "/usr/include/wchar.h" 3
extern _Float32 wcstof32_l (const wchar_t *__restrict __nptr,
       wchar_t **__restrict __endptr,
       locale_t __loc) noexcept (true);



extern _Float64 wcstof64_l (const wchar_t *__restrict __nptr,
       wchar_t **__restrict __endptr,
       locale_t __loc) noexcept (true);



extern _Float128 wcstof128_l (const wchar_t *__restrict __nptr,
         wchar_t **__restrict __endptr,
         locale_t __loc) noexcept (true);



extern _Float32x wcstof32x_l (const wchar_t *__restrict __nptr,
         wchar_t **__restrict __endptr,
         locale_t __loc) noexcept (true);



extern _Float64x wcstof64x_l (const wchar_t *__restrict __nptr,
         wchar_t **__restrict __endptr,
         locale_t __loc) noexcept (true);
# 689 "/usr/include/wchar.h" 3
extern wchar_t *wcpcpy (wchar_t *__restrict __dest,
   const wchar_t *__restrict __src) noexcept (true);



extern wchar_t *wcpncpy (wchar_t *__restrict __dest,
    const wchar_t *__restrict __src, size_t __n)
     noexcept (true);
# 718 "/usr/include/wchar.h" 3
extern __FILE *open_wmemstream (wchar_t **__bufloc, size_t *__sizeloc) noexcept (true)
  __attribute__ ((__malloc__)) ;





extern int fwide (__FILE *__fp, int __mode) noexcept (true);






extern int fwprintf (__FILE *__restrict __stream,
       const wchar_t *__restrict __format, ...)
                                                           ;




extern int wprintf (const wchar_t *__restrict __format, ...)
                                                           ;

extern int swprintf (wchar_t *__restrict __s, size_t __n,
       const wchar_t *__restrict __format, ...)
     noexcept (true) ;





extern int vfwprintf (__FILE *__restrict __s,
        const wchar_t *__restrict __format,
        __gnuc_va_list __arg)
                                                           ;




extern int vwprintf (const wchar_t *__restrict __format,
       __gnuc_va_list __arg)
                                                           ;


extern int vswprintf (wchar_t *__restrict __s, size_t __n,
        const wchar_t *__restrict __format,
        __gnuc_va_list __arg)
     noexcept (true) ;






extern int fwscanf (__FILE *__restrict __stream,
      const wchar_t *__restrict __format, ...)
                                                          ;




extern int wscanf (const wchar_t *__restrict __format, ...)
                                                          ;

extern int swscanf (const wchar_t *__restrict __s,
      const wchar_t *__restrict __format, ...)
     noexcept (true) ;
# 795 "/usr/include/wchar.h" 3
extern int fwscanf (__FILE *__restrict __stream, const wchar_t *__restrict __format, ...) __asm__ ("" "__isoc23_fwscanf")


                                                          ;
extern int wscanf (const wchar_t *__restrict __format, ...) __asm__ ("" "__isoc23_wscanf")

                                                          ;
extern int swscanf (const wchar_t *__restrict __s, const wchar_t *__restrict __format, ...) noexcept (true) __asm__ ("" "__isoc23_swscanf")


                                                          ;
# 851 "/usr/include/wchar.h" 3
extern int vfwscanf (__FILE *__restrict __s,
       const wchar_t *__restrict __format,
       __gnuc_va_list __arg)
                                                          ;




extern int vwscanf (const wchar_t *__restrict __format,
      __gnuc_va_list __arg)
                                                          ;

extern int vswscanf (const wchar_t *__restrict __s,
       const wchar_t *__restrict __format,
       __gnuc_va_list __arg)
     noexcept (true) ;
# 875 "/usr/include/wchar.h" 3
extern int vfwscanf (__FILE *__restrict __s, const wchar_t *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc23_vfwscanf")


                                                          ;
extern int vwscanf (const wchar_t *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc23_vwscanf")

                                                          ;
extern int vswscanf (const wchar_t *__restrict __s, const wchar_t *__restrict __format, __gnuc_va_list __arg) noexcept (true) __asm__ ("" "__isoc23_vswscanf")


                                                          ;
# 935 "/usr/include/wchar.h" 3
extern wint_t fgetwc (__FILE *__stream);
extern wint_t getwc (__FILE *__stream);





extern wint_t getwchar (void);






extern wint_t fputwc (wchar_t __wc, __FILE *__stream);
extern wint_t putwc (wchar_t __wc, __FILE *__stream);





extern wint_t putwchar (wchar_t __wc);







extern wchar_t *fgetws (wchar_t *__restrict __ws, int __n,
   __FILE *__restrict __stream);





extern int fputws (const wchar_t *__restrict __ws,
     __FILE *__restrict __stream);






extern wint_t ungetwc (wint_t __wc, __FILE *__stream);
# 990 "/usr/include/wchar.h" 3
extern wint_t getwc_unlocked (__FILE *__stream);
extern wint_t getwchar_unlocked (void);







extern wint_t fgetwc_unlocked (__FILE *__stream);







extern wint_t fputwc_unlocked (wchar_t __wc, __FILE *__stream);
# 1016 "/usr/include/wchar.h" 3
extern wint_t putwc_unlocked (wchar_t __wc, __FILE *__stream);
extern wint_t putwchar_unlocked (wchar_t __wc);
# 1026 "/usr/include/wchar.h" 3
extern wchar_t *fgetws_unlocked (wchar_t *__restrict __ws, int __n,
     __FILE *__restrict __stream);







extern int fputws_unlocked (const wchar_t *__restrict __ws,
       __FILE *__restrict __stream);






extern size_t wcsftime (wchar_t *__restrict __s, size_t __maxsize,
   const wchar_t *__restrict __format,
   const struct tm *__restrict __tp) noexcept (true);




extern size_t wcsftime_l (wchar_t *__restrict __s, size_t __maxsize,
     const wchar_t *__restrict __format,
     const struct tm *__restrict __tp,
     locale_t __loc) noexcept (true);
# 1073 "/usr/include/wchar.h" 3
}
# 54 "/usr/local/include/SDL3/SDL_stdinc.h" 2 3
# 80 "/usr/local/include/SDL3/SDL_stdinc.h" 3
# 1 "/usr/lib/gcc/x86_64-linux-gnu/16/include/stdint.h" 1 3
# 9 "/usr/lib/gcc/x86_64-linux-gnu/16/include/stdint.h" 3
 
# 9 "/usr/lib/gcc/x86_64-linux-gnu/16/include/stdint.h" 3
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wpedantic"
# 1 "/usr/include/stdint.h" 1 3
# 26 "/usr/include/stdint.h" 3
# 1 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 1 3
# 27 "/usr/include/stdint.h" 2 3
# 1 "/usr/include/x86_64-linux-gnu/bits/types.h" 1 3
# 27 "/usr/include/x86_64-linux-gnu/bits/types.h" 3
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3
# 28 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3
# 1 "/usr/include/x86_64-linux-gnu/bits/timesize.h" 1 3
# 19 "/usr/include/x86_64-linux-gnu/bits/timesize.h" 3
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3
# 20 "/usr/include/x86_64-linux-gnu/bits/timesize.h" 2 3
# 29 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3


typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;


typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;

typedef signed long int __int64_t;
typedef unsigned long int __uint64_t;






typedef __int8_t __int_least8_t;
typedef __uint8_t __uint_least8_t;
typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;
typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;
typedef __int64_t __int_least64_t;
typedef __uint64_t __uint_least64_t;



typedef long int __quad_t;
typedef unsigned long int __u_quad_t;







typedef long int __intmax_t;
typedef unsigned long int __uintmax_t;
# 141 "/usr/include/x86_64-linux-gnu/bits/types.h" 3
# 1 "/usr/include/x86_64-linux-gnu/bits/typesizes.h" 1 3
# 142 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3
# 1 "/usr/include/x86_64-linux-gnu/bits/time64.h" 1 3
# 143 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3


typedef unsigned long int __dev_t;
typedef unsigned int __uid_t;
typedef unsigned int __gid_t;
typedef unsigned long int __ino_t;
typedef unsigned long int __ino64_t;
typedef unsigned int __mode_t;
typedef unsigned long int __nlink_t;
typedef long int __off_t;
typedef long int __off64_t;
typedef int __pid_t;
typedef struct { int __val[2]; } __fsid_t;
typedef long int __clock_t;
typedef unsigned long int __rlim_t;
typedef unsigned long int __rlim64_t;
typedef unsigned int __id_t;
typedef long int __time_t;
typedef unsigned int __useconds_t;
typedef long int __suseconds_t;
typedef long int __suseconds64_t;

typedef int __daddr_t;
typedef int __key_t;


typedef int __clockid_t;


typedef void * __timer_t;


typedef long int __blksize_t;




typedef long int __blkcnt_t;
typedef long int __blkcnt64_t;


typedef unsigned long int __fsblkcnt_t;
typedef unsigned long int __fsblkcnt64_t;


typedef unsigned long int __fsfilcnt_t;
typedef unsigned long int __fsfilcnt64_t;


typedef long int __fsword_t;

typedef long int __ssize_t;


typedef long int __syscall_slong_t;

typedef unsigned long int __syscall_ulong_t;



typedef __off64_t __loff_t;
typedef char *__caddr_t;


typedef long int __intptr_t;


typedef unsigned int __socklen_t;




typedef int __sig_atomic_t;
# 28 "/usr/include/stdint.h" 2 3

# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3
# 30 "/usr/include/stdint.h" 2 3




# 1 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h" 1 3
# 24 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h" 3
typedef __int8_t int8_t;
typedef __int16_t int16_t;
typedef __int32_t int32_t;
typedef __int64_t int64_t;
# 35 "/usr/include/stdint.h" 2 3


# 1 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h" 1 3
# 24 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h" 3
typedef __uint8_t uint8_t;
typedef __uint16_t uint16_t;
typedef __uint32_t uint32_t;
typedef __uint64_t uint64_t;
# 38 "/usr/include/stdint.h" 2 3



# 1 "/usr/include/x86_64-linux-gnu/bits/stdint-least.h" 1 3
# 25 "/usr/include/x86_64-linux-gnu/bits/stdint-least.h" 3
typedef __int_least8_t int_least8_t;
typedef __int_least16_t int_least16_t;
typedef __int_least32_t int_least32_t;
typedef __int_least64_t int_least64_t;


typedef __uint_least8_t uint_least8_t;
typedef __uint_least16_t uint_least16_t;
typedef __uint_least32_t uint_least32_t;
typedef __uint_least64_t uint_least64_t;
# 42 "/usr/include/stdint.h" 2 3





typedef signed char int_fast8_t;

typedef long int int_fast16_t;
typedef long int int_fast32_t;
typedef long int int_fast64_t;
# 60 "/usr/include/stdint.h" 3
typedef unsigned char uint_fast8_t;

typedef unsigned long int uint_fast16_t;
typedef unsigned long int uint_fast32_t;
typedef unsigned long int uint_fast64_t;
# 76 "/usr/include/stdint.h" 3
typedef long int intptr_t;


typedef unsigned long int uintptr_t;
# 90 "/usr/include/stdint.h" 3
typedef __intmax_t intmax_t;
typedef __uintmax_t uintmax_t;
# 12 "/usr/lib/gcc/x86_64-linux-gnu/16/include/stdint.h" 2 3
#pragma GCC diagnostic pop
# 81 "/usr/local/include/SDL3/SDL_stdinc.h" 2 3
# 437 "/usr/local/include/SDL3/SDL_stdinc.h" 3
typedef int8_t Sint8;
# 446 "/usr/local/include/SDL3/SDL_stdinc.h" 3
typedef uint8_t Uint8;
# 455 "/usr/local/include/SDL3/SDL_stdinc.h" 3
typedef int16_t Sint16;
# 464 "/usr/local/include/SDL3/SDL_stdinc.h" 3
typedef uint16_t Uint16;
# 473 "/usr/local/include/SDL3/SDL_stdinc.h" 3
typedef int32_t Sint32;
# 482 "/usr/local/include/SDL3/SDL_stdinc.h" 3
typedef uint32_t Uint32;
# 493 "/usr/local/include/SDL3/SDL_stdinc.h" 3
typedef int64_t Sint64;
# 504 "/usr/local/include/SDL3/SDL_stdinc.h" 3
typedef uint64_t Uint64;
# 521 "/usr/local/include/SDL3/SDL_stdinc.h" 3
typedef Sint64 SDL_Time;
# 1169 "/usr/local/include/SDL3/SDL_stdinc.h" 3
static_assert(sizeof(bool) == 1, "sizeof(bool) == 1");
static_assert(sizeof(Uint8) == 1, "sizeof(Uint8) == 1");
static_assert(sizeof(Sint8) == 1, "sizeof(Sint8) == 1");
static_assert(sizeof(Uint16) == 2, "sizeof(Uint16) == 2");
static_assert(sizeof(Sint16) == 2, "sizeof(Sint16) == 2");
static_assert(sizeof(Uint32) == 4, "sizeof(Uint32) == 4");
static_assert(sizeof(Sint32) == 4, "sizeof(Sint32) == 4");
static_assert(sizeof(Uint64) == 8, "sizeof(Uint64) == 8");
static_assert(sizeof(Sint64) == 8, "sizeof(Sint64) == 8");

static_assert(sizeof(Uint64) <= sizeof(unsigned long long), "sizeof(Uint64) <= sizeof(unsigned long long)");
static_assert(sizeof(size_t) <= sizeof(unsigned long long), "sizeof(size_t) <= sizeof(unsigned long long)");

typedef struct SDL_alignment_test
{
    Uint8 a;
    void *b;
} SDL_alignment_test;
static_assert(sizeof(SDL_alignment_test) == (2 * sizeof(void *)), "sizeof(SDL_alignment_test) == (2 * sizeof(void *))");
static_assert(static_cast<int>(~static_cast<int>(0)) == static_cast<int>(-1), "SDL_static_cast(int, ~SDL_static_cast(int, 0)) == SDL_static_cast(int, -1)");
# 1202 "/usr/local/include/SDL3/SDL_stdinc.h" 3
typedef enum SDL_DUMMY_ENUM
{
    DUMMY_ENUM_VALUE
} SDL_DUMMY_ENUM;

static_assert(sizeof(SDL_DUMMY_ENUM) == sizeof(int), "sizeof(SDL_DUMMY_ENUM) == sizeof(int)");




# 1 "/usr/local/include/SDL3/SDL_begin_code.h" 1 3
# 1213 "/usr/local/include/SDL3/SDL_stdinc.h" 2 3


extern "C" {
# 1341 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) __attribute__((malloc)) void * SDL_malloc(size_t size);
# 1366 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) __attribute__((malloc)) __attribute__((alloc_size(1, 2))) void * SDL_calloc(size_t nmemb, size_t size);
# 1406 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) __attribute__((alloc_size(2))) void * SDL_realloc(void *mem, size_t size);
# 1426 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) void SDL_free(void *mem);
# 1445 "/usr/local/include/SDL3/SDL_stdinc.h" 3
typedef void *( *SDL_malloc_func)(size_t size);
# 1466 "/usr/local/include/SDL3/SDL_stdinc.h" 3
typedef void *( *SDL_calloc_func)(size_t nmemb, size_t size);
# 1487 "/usr/local/include/SDL3/SDL_stdinc.h" 3
typedef void *( *SDL_realloc_func)(void *mem, size_t size);
# 1505 "/usr/local/include/SDL3/SDL_stdinc.h" 3
typedef void ( *SDL_free_func)(void *mem);
# 1524 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) void SDL_GetOriginalMemoryFunctions(SDL_malloc_func *malloc_func,
                                                            SDL_calloc_func *calloc_func,
                                                            SDL_realloc_func *realloc_func,
                                                            SDL_free_func *free_func);
# 1546 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) void SDL_GetMemoryFunctions(SDL_malloc_func *malloc_func,
                                                    SDL_calloc_func *calloc_func,
                                                    SDL_realloc_func *realloc_func,
                                                    SDL_free_func *free_func);
# 1577 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetMemoryFunctions(SDL_malloc_func malloc_func,
                                                            SDL_calloc_func calloc_func,
                                                            SDL_realloc_func realloc_func,
                                                            SDL_free_func free_func);
# 1604 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) __attribute__((malloc)) void * SDL_aligned_alloc(size_t alignment, size_t size);
# 1622 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) void SDL_aligned_free(void *mem);
# 1634 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) int SDL_GetNumAllocations(void);
# 1649 "/usr/local/include/SDL3/SDL_stdinc.h" 3
typedef struct SDL_Environment SDL_Environment;
# 1672 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) SDL_Environment * SDL_GetEnvironment(void);
# 1694 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) SDL_Environment * SDL_CreateEnvironment(bool populated);
# 1714 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) const char * SDL_GetEnvironmentVariable(SDL_Environment *env, const char *name);
# 1735 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) char ** SDL_GetEnvironmentVariables(SDL_Environment *env);
# 1759 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetEnvironmentVariable(SDL_Environment *env, const char *name, const char *value, bool overwrite);
# 1780 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_UnsetEnvironmentVariable(SDL_Environment *env, const char *name);
# 1794 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) void SDL_DestroyEnvironment(SDL_Environment *env);
# 1809 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) const char * SDL_getenv(const char *name);
# 1828 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) const char * SDL_getenv_unsafe(const char *name);
# 1846 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) int SDL_setenv_unsafe(const char *name, const char *value, int overwrite);
# 1861 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) int SDL_unsetenv_unsafe(const char *name);
# 1877 "/usr/local/include/SDL3/SDL_stdinc.h" 3
typedef int ( *SDL_CompareCallback)(const void *a, const void *b);
# 1923 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) void SDL_qsort(void *base, size_t nmemb, size_t size, SDL_CompareCallback compare);
# 1973 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) void * SDL_bsearch(const void *key, const void *base, size_t nmemb, size_t size, SDL_CompareCallback compare);
# 1990 "/usr/local/include/SDL3/SDL_stdinc.h" 3
typedef int ( *SDL_CompareCallback_r)(void *userdata, const void *a, const void *b);
# 2043 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) void SDL_qsort_r(void *base, size_t nmemb, size_t size, SDL_CompareCallback_r compare, void *userdata);
# 2101 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) void * SDL_bsearch_r(const void *key, const void *base, size_t nmemb, size_t size, SDL_CompareCallback_r compare, void *userdata);
# 2113 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) int SDL_abs(int x);
# 2188 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) int SDL_isalpha(int x);
# 2203 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) int SDL_isalnum(int x);
# 2218 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) int SDL_isblank(int x);
# 2233 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) int SDL_iscntrl(int x);
# 2248 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) int SDL_isdigit(int x);
# 2263 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) int SDL_isxdigit(int x);
# 2281 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) int SDL_ispunct(int x);
# 2303 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) int SDL_isspace(int x);
# 2318 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) int SDL_isupper(int x);
# 2333 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) int SDL_islower(int x);
# 2352 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) int SDL_isprint(int x);
# 2373 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) int SDL_isgraph(int x);
# 2391 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) int SDL_toupper(int x);
# 2409 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) int SDL_tolower(int x);
# 2430 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) Uint16 SDL_crc16(Uint16 crc, const void *data, size_t len);
# 2451 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) Uint32 SDL_crc32(Uint32 crc, const void *data, size_t len);
# 2477 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) Uint32 SDL_murmur3_32(const void *data, size_t len, Uint32 seed);
# 2497 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) void * SDL_memcpy( void *dst, const void *src, size_t len);
# 2553 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) void * SDL_memmove( void *dst, const void *src, size_t len);
# 2581 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) void * SDL_memset( void *dst, int c, size_t len);
# 2601 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) void * SDL_memset4(void *dst, Uint32 val, size_t dwords);
# 2683 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) int SDL_memcmp(const void *s1, const void *s2, size_t len);
# 2710 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) size_t SDL_wcslen(const wchar_t *wstr);
# 2741 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) size_t SDL_wcsnlen(const wchar_t *wstr, size_t maxlen);
# 2768 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) size_t SDL_wcslcpy( wchar_t *dst, const wchar_t *src, size_t maxlen);
# 2797 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) size_t SDL_wcslcat( wchar_t *dst, const wchar_t *src, size_t maxlen);
# 2815 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) wchar_t * SDL_wcsdup(const wchar_t *wstr);
# 2835 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) wchar_t * SDL_wcsstr(const wchar_t *haystack, const wchar_t *needle);
# 2860 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) wchar_t * SDL_wcsnstr(const wchar_t *haystack, const wchar_t *needle, size_t maxlen);
# 2879 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) int SDL_wcscmp(const wchar_t *str1, const wchar_t *str2);
# 2910 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) int SDL_wcsncmp(const wchar_t *str1, const wchar_t *str2, size_t maxlen);
# 2940 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) int SDL_wcscasecmp(const wchar_t *str1, const wchar_t *str2);
# 2982 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) int SDL_wcsncasecmp(const wchar_t *str1, const wchar_t *str2, size_t maxlen);
# 3009 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) long SDL_wcstol(const wchar_t *str, wchar_t **endp, int base);
# 3029 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) size_t SDL_strlen(const char *str);
# 3053 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) size_t SDL_strnlen(const char *str, size_t maxlen);
# 3082 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) size_t SDL_strlcpy( char *dst, const char *src, size_t maxlen);
# 3110 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) size_t SDL_utf8strlcpy( char *dst, const char *src, size_t dst_bytes);
# 3138 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) size_t SDL_strlcat( char *dst, const char *src, size_t maxlen);
# 3156 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) __attribute__((malloc)) char * SDL_strdup(const char *str);
# 3181 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) __attribute__((malloc)) char * SDL_strndup(const char *str, size_t maxlen);
# 3202 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) char * SDL_strrev(char *str);
# 3223 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) char * SDL_strupr(char *str);
# 3244 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) char * SDL_strlwr(char *str);
# 3264 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) char * SDL_strchr(const char *str, int c);
# 3283 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) char * SDL_strrchr(const char *str, int c);
# 3303 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) char * SDL_strstr(const char *haystack, const char *needle);
# 3326 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) char * SDL_strnstr(const char *haystack, const char *needle, size_t maxlen);
# 3354 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) char * SDL_strcasestr(const char *haystack, const char *needle);
# 3383 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) char * SDL_strtok_r(char *str, const char *delim, char **saveptr);
# 3411 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) size_t SDL_utf8strlen(const char *str);
# 3444 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) size_t SDL_utf8strnlen(const char *str, size_t bytes);
# 3472 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) char * SDL_itoa(int value, char *str, int radix);
# 3500 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) char * SDL_uitoa(unsigned int value, char *str, int radix);
# 3528 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) char * SDL_ltoa(long value, char *str, int radix);
# 3556 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) char * SDL_ultoa(unsigned long value, char *str, int radix);
# 3586 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) char * SDL_lltoa(long long value, char *str, int radix);
# 3614 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) char * SDL_ulltoa(unsigned long long value, char *str, int radix);
# 3638 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) int SDL_atoi(const char *str);
# 3660 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) double SDL_atof(const char *str);
# 3694 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) long SDL_strtol(const char *str, char **endp, int base);
# 3727 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) unsigned long SDL_strtoul(const char *str, char **endp, int base);
# 3762 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) long long SDL_strtoll(const char *str, char **endp, int base);
# 3796 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) unsigned long long SDL_strtoull(const char *str, char **endp, int base);
# 3826 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) double SDL_strtod(const char *str, char **endp);
# 3846 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) int SDL_strcmp(const char *str1, const char *str2);
# 3876 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) int SDL_strncmp(const char *str1, const char *str2, size_t maxlen);
# 3904 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) int SDL_strcasecmp(const char *str1, const char *str2);
# 3944 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) int SDL_strncasecmp(const char *str1, const char *str2, size_t maxlen);
# 3962 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) char * SDL_strpbrk(const char *str, const char *breakset);
# 4022 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) Uint32 SDL_StepUTF8(const char **pstr, size_t *pslen);
# 4053 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) Uint32 SDL_StepBackUTF8(const char *start, const char **pstr);
# 4082 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) char * SDL_UCS4ToUTF8(Uint32 codepoint, char *dst);
# 4099 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) int SDL_sscanf(const char *text, const char *fmt, ...) __attribute__ (( format( __scanf__, 2, 2 +1 )));
# 4118 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) int SDL_vsscanf(const char *text, const char *fmt, va_list ap) __attribute__(( format( __scanf__, 2, 0 )));
# 4151 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) int SDL_snprintf( char *text, size_t maxlen, const char *fmt, ...) __attribute__ (( format( __printf__, 3, 3 +1 )));
# 4185 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) int SDL_swprintf( wchar_t *text, size_t maxlen, const wchar_t *fmt, ...) ;
# 4205 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) int SDL_vsnprintf( char *text, size_t maxlen, const char *fmt, va_list ap) __attribute__(( format( __printf__, 3, 0 )));
# 4226 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) int SDL_vswprintf( wchar_t *text, size_t maxlen, const wchar_t *fmt, va_list ap) ;
# 4255 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) int SDL_asprintf(char **strp, const char *fmt, ...) __attribute__ (( format( __printf__, 2, 2 +1 )));
# 4274 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) int SDL_vasprintf(char **strp, const char *fmt, va_list ap) __attribute__(( format( __printf__, 2, 0 )));
# 4294 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) void SDL_srand(Uint64 seed);
# 4328 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) Sint32 SDL_rand(Sint32 n);
# 4351 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) float SDL_randf(void);
# 4374 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) Uint32 SDL_rand_bits(void);
# 4409 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) Sint32 SDL_rand_r(Uint64 *state, Sint32 n);
# 4436 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) float SDL_randf_r(Uint64 *state);
# 4461 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) Uint32 SDL_rand_bits_r(Uint64 *state);
# 4515 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) double SDL_acos(double x);
# 4545 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) float SDL_acosf(float x);
# 4575 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) double SDL_asin(double x);
# 4605 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) float SDL_asinf(float x);
# 4637 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) double SDL_atan(double x);
# 4669 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) float SDL_atanf(float x);
# 4705 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) double SDL_atan2(double y, double x);
# 4741 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) float SDL_atan2f(float y, float x);
# 4769 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) double SDL_ceil(double x);
# 4797 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) float SDL_ceilf(float x);
# 4823 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) double SDL_copysign(double x, double y);
# 4849 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) float SDL_copysignf(float x, float y);
# 4877 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) double SDL_cos(double x);
# 4905 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) float SDL_cosf(float x);
# 4937 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) double SDL_exp(double x);
# 4969 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) float SDL_expf(float x);
# 4990 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) double SDL_fabs(double x);
# 5011 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) float SDL_fabsf(float x);
# 5039 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) double SDL_floor(double x);
# 5067 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) float SDL_floorf(float x);
# 5096 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) double SDL_trunc(double x);
# 5125 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) float SDL_truncf(float x);
# 5155 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) double SDL_fmod(double x, double y);
# 5185 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) float SDL_fmodf(float x, float y);
# 5199 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) int SDL_isinf(double x);
# 5213 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) int SDL_isinff(float x);
# 5227 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) int SDL_isnan(double x);
# 5241 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) int SDL_isnanf(float x);
# 5271 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) double SDL_log(double x);
# 5300 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) float SDL_logf(float x);
# 5330 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) double SDL_log10(double x);
# 5360 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) float SDL_log10f(float x);
# 5380 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) double SDL_modf(double x, double *y);
# 5400 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) float SDL_modff(float x, float *y);
# 5432 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) double SDL_pow(double x, double y);
# 5464 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) float SDL_powf(float x, float y);
# 5493 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) double SDL_round(double x);
# 5522 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) float SDL_roundf(float x);
# 5551 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) long SDL_lround(double x);
# 5580 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) long SDL_lroundf(float x);
# 5605 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) double SDL_scalbn(double x, int n);
# 5630 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) float SDL_scalbnf(float x, int n);
# 5658 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) double SDL_sin(double x);
# 5686 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) float SDL_sinf(float x);
# 5712 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) double SDL_sqrt(double x);
# 5738 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) float SDL_sqrtf(float x);
# 5768 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) double SDL_tan(double x);
# 5798 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) float SDL_tanf(float x);
# 5807 "/usr/local/include/SDL3/SDL_stdinc.h" 3
typedef struct SDL_iconv_data_t *SDL_iconv_t;
# 5824 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) SDL_iconv_t SDL_iconv_open(const char *tocode,
                                                   const char *fromcode);
# 5839 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) int SDL_iconv_close(SDL_iconv_t cd);
# 5877 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) size_t SDL_iconv(SDL_iconv_t cd, const char **inbuf,
                                         size_t *inbytesleft, char **outbuf,
                                         size_t *outbytesleft);
# 5912 "/usr/local/include/SDL3/SDL_stdinc.h" 3
extern __attribute__ ((visibility("default"))) char * SDL_iconv_string(const char *tocode,
                                               const char *fromcode,
                                               const char *inbuf,
                                               size_t inbytesleft);
# 6071 "/usr/local/include/SDL3/SDL_stdinc.h" 3
__attribute__((always_inline)) static __inline__ bool SDL_size_mul_check_overflow(size_t a, size_t b, size_t *ret)
{
    if (a != 0 && b > (18446744073709551615UL) / a) {
        return false;
    }
    *ret = a * b;
    return true;
}






__attribute__((always_inline)) static __inline__ bool SDL_size_mul_check_overflow_builtin(size_t a, size_t b, size_t *ret)
{
    return (__builtin_mul_overflow(a, b, ret) == 0);
}
# 6110 "/usr/local/include/SDL3/SDL_stdinc.h" 3
__attribute__((always_inline)) static __inline__ bool SDL_size_add_check_overflow(size_t a, size_t b, size_t *ret)
{
    if (b > (18446744073709551615UL) - a) {
        return false;
    }
    *ret = a + b;
    return true;
}





__attribute__((always_inline)) static __inline__ bool SDL_size_add_check_overflow_builtin(size_t a, size_t b, size_t *ret)
{
    return (__builtin_add_overflow(a, b, ret) == 0);
}
# 6153 "/usr/local/include/SDL3/SDL_stdinc.h" 3
typedef void (*SDL_FunctionPointer)(void);




}

# 1 "/usr/local/include/SDL3/SDL_close_code.h" 1 3
# 6161 "/usr/local/include/SDL3/SDL_stdinc.h" 2 3
# 35 "/usr/local/include/SDL3/SDL.h" 2 3
# 1 "/usr/local/include/SDL3/SDL_assert.h" 1 3
# 69 "/usr/local/include/SDL3/SDL_assert.h" 3
# 1 "/usr/local/include/SDL3/SDL_begin_code.h" 1 3
# 70 "/usr/local/include/SDL3/SDL_assert.h" 2 3


extern "C" {
# 306 "/usr/local/include/SDL3/SDL_assert.h" 3
typedef enum SDL_AssertState
{
    SDL_ASSERTION_RETRY,
    SDL_ASSERTION_BREAK,
    SDL_ASSERTION_ABORT,
    SDL_ASSERTION_IGNORE,
    SDL_ASSERTION_ALWAYS_IGNORE
} SDL_AssertState;
# 324 "/usr/local/include/SDL3/SDL_assert.h" 3
typedef struct SDL_AssertData
{
    bool always_ignore;
    unsigned int trigger_count;
    const char *condition;
    const char *filename;
    int linenum;
    const char *function;
    const struct SDL_AssertData *next;
} SDL_AssertData;
# 350 "/usr/local/include/SDL3/SDL_assert.h" 3
extern __attribute__ ((visibility("default"))) SDL_AssertState SDL_ReportAssertion(SDL_AssertData *data,
                                                            const char *func,
                                                            const char *file, int line) ;
# 565 "/usr/local/include/SDL3/SDL_assert.h" 3
typedef SDL_AssertState ( *SDL_AssertionHandler)(
                                 const SDL_AssertData *data, void *userdata);
# 591 "/usr/local/include/SDL3/SDL_assert.h" 3
extern __attribute__ ((visibility("default"))) void SDL_SetAssertionHandler(
                                            SDL_AssertionHandler handler,
                                            void *userdata);
# 612 "/usr/local/include/SDL3/SDL_assert.h" 3
extern __attribute__ ((visibility("default"))) SDL_AssertionHandler SDL_GetDefaultAssertionHandler(void);
# 637 "/usr/local/include/SDL3/SDL_assert.h" 3
extern __attribute__ ((visibility("default"))) SDL_AssertionHandler SDL_GetAssertionHandler(void **puserdata);
# 671 "/usr/local/include/SDL3/SDL_assert.h" 3
extern __attribute__ ((visibility("default"))) const SDL_AssertData * SDL_GetAssertionReport(void);
# 689 "/usr/local/include/SDL3/SDL_assert.h" 3
extern __attribute__ ((visibility("default"))) void SDL_ResetAssertionReport(void);



}

# 1 "/usr/local/include/SDL3/SDL_close_code.h" 1 3
# 696 "/usr/local/include/SDL3/SDL_assert.h" 2 3
# 36 "/usr/local/include/SDL3/SDL.h" 2 3
# 1 "/usr/local/include/SDL3/SDL_asyncio.h" 1 3
# 108 "/usr/local/include/SDL3/SDL_asyncio.h" 3
# 1 "/usr/local/include/SDL3/SDL_begin_code.h" 1 3
# 109 "/usr/local/include/SDL3/SDL_asyncio.h" 2 3


extern "C" {
# 124 "/usr/local/include/SDL3/SDL_asyncio.h" 3
typedef struct SDL_AsyncIO SDL_AsyncIO;






typedef enum SDL_AsyncIOTaskType
{
    SDL_ASYNCIO_TASK_READ,
    SDL_ASYNCIO_TASK_WRITE,
    SDL_ASYNCIO_TASK_CLOSE
} SDL_AsyncIOTaskType;






typedef enum SDL_AsyncIOResult
{
    SDL_ASYNCIO_COMPLETE,
    SDL_ASYNCIO_FAILURE,
    SDL_ASYNCIO_CANCELED
} SDL_AsyncIOResult;






typedef struct SDL_AsyncIOOutcome
{
    SDL_AsyncIO *asyncio;
    SDL_AsyncIOTaskType type;
    SDL_AsyncIOResult result;
    void *buffer;
    Uint64 offset;
    Uint64 bytes_requested;
    Uint64 bytes_transferred;
    void *userdata;
} SDL_AsyncIOOutcome;
# 183 "/usr/local/include/SDL3/SDL_asyncio.h" 3
typedef struct SDL_AsyncIOQueue SDL_AsyncIOQueue;
# 222 "/usr/local/include/SDL3/SDL_asyncio.h" 3
extern __attribute__ ((visibility("default"))) SDL_AsyncIO * SDL_AsyncIOFromFile(const char *file, const char *mode);
# 239 "/usr/local/include/SDL3/SDL_asyncio.h" 3
extern __attribute__ ((visibility("default"))) Sint64 SDL_GetAsyncIOSize(SDL_AsyncIO *asyncio);
# 277 "/usr/local/include/SDL3/SDL_asyncio.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_ReadAsyncIO(SDL_AsyncIO *asyncio, void *ptr, Uint64 offset, Uint64 size, SDL_AsyncIOQueue *queue, void *userdata);
# 314 "/usr/local/include/SDL3/SDL_asyncio.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_WriteAsyncIO(SDL_AsyncIO *asyncio, void *ptr, Uint64 offset, Uint64 size, SDL_AsyncIOQueue *queue, void *userdata);
# 363 "/usr/local/include/SDL3/SDL_asyncio.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_CloseAsyncIO(SDL_AsyncIO *asyncio, bool flush, SDL_AsyncIOQueue *queue, void *userdata);
# 382 "/usr/local/include/SDL3/SDL_asyncio.h" 3
extern __attribute__ ((visibility("default"))) SDL_AsyncIOQueue * SDL_CreateAsyncIOQueue(void);
# 412 "/usr/local/include/SDL3/SDL_asyncio.h" 3
extern __attribute__ ((visibility("default"))) void SDL_DestroyAsyncIOQueue(SDL_AsyncIOQueue *queue);
# 438 "/usr/local/include/SDL3/SDL_asyncio.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetAsyncIOResult(SDL_AsyncIOQueue *queue, SDL_AsyncIOOutcome *outcome);
# 482 "/usr/local/include/SDL3/SDL_asyncio.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_WaitAsyncIOResult(SDL_AsyncIOQueue *queue, SDL_AsyncIOOutcome *outcome, Sint32 timeoutMS);
# 506 "/usr/local/include/SDL3/SDL_asyncio.h" 3
extern __attribute__ ((visibility("default"))) void SDL_SignalAsyncIOQueue(SDL_AsyncIOQueue *queue);
# 538 "/usr/local/include/SDL3/SDL_asyncio.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_LoadFileAsync(const char *file, SDL_AsyncIOQueue *queue, void *userdata);



}

# 1 "/usr/local/include/SDL3/SDL_close_code.h" 1 3
# 545 "/usr/local/include/SDL3/SDL_asyncio.h" 2 3
# 37 "/usr/local/include/SDL3/SDL.h" 2 3
# 1 "/usr/local/include/SDL3/SDL_atomic.h" 1 3
# 56 "/usr/local/include/SDL3/SDL_atomic.h" 3
# 1 "/usr/local/include/SDL3/SDL_begin_code.h" 1 3
# 57 "/usr/local/include/SDL3/SDL_atomic.h" 2 3



extern "C" {
# 82 "/usr/local/include/SDL3/SDL_atomic.h" 3
typedef int SDL_SpinLock;
# 100 "/usr/local/include/SDL3/SDL_atomic.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_TryLockSpinlock(SDL_SpinLock *lock);
# 117 "/usr/local/include/SDL3/SDL_atomic.h" 3
extern __attribute__ ((visibility("default"))) void SDL_LockSpinlock(SDL_SpinLock *lock);
# 136 "/usr/local/include/SDL3/SDL_atomic.h" 3
extern __attribute__ ((visibility("default"))) void SDL_UnlockSpinlock(SDL_SpinLock *lock);
# 192 "/usr/local/include/SDL3/SDL_atomic.h" 3
extern __attribute__ ((visibility("default"))) void SDL_MemoryBarrierReleaseFunction(void);
# 212 "/usr/local/include/SDL3/SDL_atomic.h" 3
extern __attribute__ ((visibility("default"))) void SDL_MemoryBarrierAcquireFunction(void);
# 395 "/usr/local/include/SDL3/SDL_atomic.h" 3
typedef struct SDL_AtomicInt { int value; } SDL_AtomicInt;
# 415 "/usr/local/include/SDL3/SDL_atomic.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_CompareAndSwapAtomicInt(SDL_AtomicInt *a, int oldval, int newval);
# 435 "/usr/local/include/SDL3/SDL_atomic.h" 3
extern __attribute__ ((visibility("default"))) int SDL_SetAtomicInt(SDL_AtomicInt *a, int v);
# 452 "/usr/local/include/SDL3/SDL_atomic.h" 3
extern __attribute__ ((visibility("default"))) int SDL_GetAtomicInt(SDL_AtomicInt *a);
# 473 "/usr/local/include/SDL3/SDL_atomic.h" 3
extern __attribute__ ((visibility("default"))) int SDL_AddAtomicInt(SDL_AtomicInt *a, int v);
# 540 "/usr/local/include/SDL3/SDL_atomic.h" 3
typedef struct SDL_AtomicU32 { Uint32 value; } SDL_AtomicU32;
# 560 "/usr/local/include/SDL3/SDL_atomic.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_CompareAndSwapAtomicU32(SDL_AtomicU32 *a, Uint32 oldval, Uint32 newval);
# 580 "/usr/local/include/SDL3/SDL_atomic.h" 3
extern __attribute__ ((visibility("default"))) Uint32 SDL_SetAtomicU32(SDL_AtomicU32 *a, Uint32 v);
# 597 "/usr/local/include/SDL3/SDL_atomic.h" 3
extern __attribute__ ((visibility("default"))) Uint32 SDL_GetAtomicU32(SDL_AtomicU32 *a);
# 615 "/usr/local/include/SDL3/SDL_atomic.h" 3
extern __attribute__ ((visibility("default"))) Uint32 SDL_AddAtomicU32(SDL_AtomicU32 *a, int v);
# 636 "/usr/local/include/SDL3/SDL_atomic.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_CompareAndSwapAtomicPointer(void **a, void *oldval, void *newval);
# 655 "/usr/local/include/SDL3/SDL_atomic.h" 3
extern __attribute__ ((visibility("default"))) void * SDL_SetAtomicPointer(void **a, void *v);
# 673 "/usr/local/include/SDL3/SDL_atomic.h" 3
extern __attribute__ ((visibility("default"))) void * SDL_GetAtomicPointer(void **a);



}


# 1 "/usr/local/include/SDL3/SDL_close_code.h" 1 3
# 681 "/usr/local/include/SDL3/SDL_atomic.h" 2 3
# 38 "/usr/local/include/SDL3/SDL.h" 2 3
# 1 "/usr/local/include/SDL3/SDL_audio.h" 1 3
# 132 "/usr/local/include/SDL3/SDL_audio.h" 3
# 1 "/usr/local/include/SDL3/SDL_endian.h" 1 3
# 132 "/usr/local/include/SDL3/SDL_endian.h" 3
# 1 "/usr/include/endian.h" 1 3
# 24 "/usr/include/endian.h" 3
# 1 "/usr/include/x86_64-linux-gnu/bits/endian.h" 1 3
# 35 "/usr/include/x86_64-linux-gnu/bits/endian.h" 3
# 1 "/usr/include/x86_64-linux-gnu/bits/endianness.h" 1 3
# 36 "/usr/include/x86_64-linux-gnu/bits/endian.h" 2 3
# 25 "/usr/include/endian.h" 2 3
# 35 "/usr/include/endian.h" 3
# 1 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 1 3
# 33 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 3
static __inline __uint16_t
__bswap_16 (__uint16_t __bsx)
{

  return __builtin_bswap16 (__bsx);



}






static __inline __uint32_t
__bswap_32 (__uint32_t __bsx)
{

  return __builtin_bswap32 (__bsx);



}
# 69 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 3
__extension__ static __inline __uint64_t
__bswap_64 (__uint64_t __bsx)
{

  return __builtin_bswap64 (__bsx);



}
# 36 "/usr/include/endian.h" 2 3
# 1 "/usr/include/x86_64-linux-gnu/bits/uintn-identity.h" 1 3
# 32 "/usr/include/x86_64-linux-gnu/bits/uintn-identity.h" 3
static __inline __uint16_t
__uint16_identity (__uint16_t __x)
{
  return __x;
}

static __inline __uint32_t
__uint32_identity (__uint32_t __x)
{
  return __x;
}

static __inline __uint64_t
__uint64_identity (__uint64_t __x)
{
  return __x;
}
# 37 "/usr/include/endian.h" 2 3
# 133 "/usr/local/include/SDL3/SDL_endian.h" 2 3
# 215 "/usr/local/include/SDL3/SDL_endian.h" 3
# 1 "/usr/local/include/SDL3/SDL_begin_code.h" 1 3
# 216 "/usr/local/include/SDL3/SDL_endian.h" 2 3


extern "C" {
# 408 "/usr/local/include/SDL3/SDL_endian.h" 3
__attribute__((always_inline)) static __inline__ float SDL_SwapFloat(float x)
{
    union {
        float f;
        Uint32 ui32;
    } swapper;
    swapper.f = x;
    swapper.ui32 = __builtin_bswap32(swapper.ui32);
    return swapper.f;
}
# 641 "/usr/local/include/SDL3/SDL_endian.h" 3
}

# 1 "/usr/local/include/SDL3/SDL_close_code.h" 1 3
# 644 "/usr/local/include/SDL3/SDL_endian.h" 2 3
# 133 "/usr/local/include/SDL3/SDL_audio.h" 2 3
# 1 "/usr/local/include/SDL3/SDL_error.h" 1 3
# 53 "/usr/local/include/SDL3/SDL_error.h" 3
# 1 "/usr/local/include/SDL3/SDL_begin_code.h" 1 3
# 54 "/usr/local/include/SDL3/SDL_error.h" 2 3


extern "C" {
# 89 "/usr/local/include/SDL3/SDL_error.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetError( const char *fmt, ...) __attribute__ (( format( __printf__, 1, 1 +1 )));
# 108 "/usr/local/include/SDL3/SDL_error.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetErrorV( const char *fmt, va_list ap) __attribute__(( format( __printf__, 1, 0 )));
# 121 "/usr/local/include/SDL3/SDL_error.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_OutOfMemory(void);
# 158 "/usr/local/include/SDL3/SDL_error.h" 3
extern __attribute__ ((visibility("default"))) const char * SDL_GetError(void);
# 172 "/usr/local/include/SDL3/SDL_error.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_ClearError(void);
# 222 "/usr/local/include/SDL3/SDL_error.h" 3
}

# 1 "/usr/local/include/SDL3/SDL_close_code.h" 1 3
# 225 "/usr/local/include/SDL3/SDL_error.h" 2 3
# 134 "/usr/local/include/SDL3/SDL_audio.h" 2 3
# 1 "/usr/local/include/SDL3/SDL_mutex.h" 1 3
# 46 "/usr/local/include/SDL3/SDL_mutex.h" 3
# 1 "/usr/local/include/SDL3/SDL_thread.h" 1 3
# 46 "/usr/local/include/SDL3/SDL_thread.h" 3
# 1 "/usr/local/include/SDL3/SDL_properties.h" 1 3
# 55 "/usr/local/include/SDL3/SDL_properties.h" 3
# 1 "/usr/local/include/SDL3/SDL_begin_code.h" 1 3
# 56 "/usr/local/include/SDL3/SDL_properties.h" 2 3


extern "C" {







typedef Uint32 SDL_PropertiesID;






typedef enum SDL_PropertyType
{
    SDL_PROPERTY_TYPE_INVALID,
    SDL_PROPERTY_TYPE_POINTER,
    SDL_PROPERTY_TYPE_STRING,
    SDL_PROPERTY_TYPE_NUMBER,
    SDL_PROPERTY_TYPE_FLOAT,
    SDL_PROPERTY_TYPE_BOOLEAN
} SDL_PropertyType;
# 116 "/usr/local/include/SDL3/SDL_properties.h" 3
extern __attribute__ ((visibility("default"))) SDL_PropertiesID SDL_GetGlobalProperties(void);
# 132 "/usr/local/include/SDL3/SDL_properties.h" 3
extern __attribute__ ((visibility("default"))) SDL_PropertiesID SDL_CreateProperties(void);
# 153 "/usr/local/include/SDL3/SDL_properties.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_CopyProperties(SDL_PropertiesID src, SDL_PropertiesID dst);
# 177 "/usr/local/include/SDL3/SDL_properties.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_LockProperties(SDL_PropertiesID props);
# 190 "/usr/local/include/SDL3/SDL_properties.h" 3
extern __attribute__ ((visibility("default"))) void SDL_UnlockProperties(SDL_PropertiesID props);
# 214 "/usr/local/include/SDL3/SDL_properties.h" 3
typedef void ( *SDL_CleanupPropertyCallback)(void *userdata, void *value);
# 245 "/usr/local/include/SDL3/SDL_properties.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetPointerPropertyWithCleanup(SDL_PropertiesID props, const char *name, void *value, SDL_CleanupPropertyCallback cleanup, void *userdata);
# 268 "/usr/local/include/SDL3/SDL_properties.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetPointerProperty(SDL_PropertiesID props, const char *name, void *value);
# 288 "/usr/local/include/SDL3/SDL_properties.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetStringProperty(SDL_PropertiesID props, const char *name, const char *value);
# 305 "/usr/local/include/SDL3/SDL_properties.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetNumberProperty(SDL_PropertiesID props, const char *name, Sint64 value);
# 322 "/usr/local/include/SDL3/SDL_properties.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetFloatProperty(SDL_PropertiesID props, const char *name, float value);
# 339 "/usr/local/include/SDL3/SDL_properties.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetBooleanProperty(SDL_PropertiesID props, const char *name, bool value);
# 354 "/usr/local/include/SDL3/SDL_properties.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_HasProperty(SDL_PropertiesID props, const char *name);
# 370 "/usr/local/include/SDL3/SDL_properties.h" 3
extern __attribute__ ((visibility("default"))) SDL_PropertyType SDL_GetPropertyType(SDL_PropertiesID props, const char *name);
# 403 "/usr/local/include/SDL3/SDL_properties.h" 3
extern __attribute__ ((visibility("default"))) void * SDL_GetPointerProperty(SDL_PropertiesID props, const char *name, void *default_value);
# 427 "/usr/local/include/SDL3/SDL_properties.h" 3
extern __attribute__ ((visibility("default"))) const char * SDL_GetStringProperty(SDL_PropertiesID props, const char *name, const char *default_value);
# 449 "/usr/local/include/SDL3/SDL_properties.h" 3
extern __attribute__ ((visibility("default"))) Sint64 SDL_GetNumberProperty(SDL_PropertiesID props, const char *name, Sint64 default_value);
# 471 "/usr/local/include/SDL3/SDL_properties.h" 3
extern __attribute__ ((visibility("default"))) float SDL_GetFloatProperty(SDL_PropertiesID props, const char *name, float default_value);
# 493 "/usr/local/include/SDL3/SDL_properties.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetBooleanProperty(SDL_PropertiesID props, const char *name, bool default_value);
# 507 "/usr/local/include/SDL3/SDL_properties.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_ClearProperty(SDL_PropertiesID props, const char *name);
# 526 "/usr/local/include/SDL3/SDL_properties.h" 3
typedef void ( *SDL_EnumeratePropertiesCallback)(void *userdata, SDL_PropertiesID props, const char *name);
# 544 "/usr/local/include/SDL3/SDL_properties.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_EnumerateProperties(SDL_PropertiesID props, SDL_EnumeratePropertiesCallback callback, void *userdata);
# 562 "/usr/local/include/SDL3/SDL_properties.h" 3
extern __attribute__ ((visibility("default"))) void SDL_DestroyProperties(SDL_PropertiesID props);



}

# 1 "/usr/local/include/SDL3/SDL_close_code.h" 1 3
# 569 "/usr/local/include/SDL3/SDL_properties.h" 2 3
# 47 "/usr/local/include/SDL3/SDL_thread.h" 2 3
# 55 "/usr/local/include/SDL3/SDL_thread.h" 3
# 1 "/usr/local/include/SDL3/SDL_begin_code.h" 1 3
# 56 "/usr/local/include/SDL3/SDL_thread.h" 2 3


extern "C" {
# 71 "/usr/local/include/SDL3/SDL_thread.h" 3
typedef struct SDL_Thread SDL_Thread;
# 85 "/usr/local/include/SDL3/SDL_thread.h" 3
typedef Uint64 SDL_ThreadID;
# 98 "/usr/local/include/SDL3/SDL_thread.h" 3
typedef SDL_AtomicInt SDL_TLSID;
# 111 "/usr/local/include/SDL3/SDL_thread.h" 3
typedef enum SDL_ThreadPriority {
    SDL_THREAD_PRIORITY_LOW,
    SDL_THREAD_PRIORITY_NORMAL,
    SDL_THREAD_PRIORITY_HIGH,
    SDL_THREAD_PRIORITY_TIME_CRITICAL
} SDL_ThreadPriority;
# 127 "/usr/local/include/SDL3/SDL_thread.h" 3
typedef enum SDL_ThreadState
{
    SDL_THREAD_UNKNOWN,
    SDL_THREAD_ALIVE,
    SDL_THREAD_DETACHED,
    SDL_THREAD_COMPLETE
} SDL_ThreadState;
# 143 "/usr/local/include/SDL3/SDL_thread.h" 3
typedef int ( *SDL_ThreadFunction) (void *data);
# 334 "/usr/local/include/SDL3/SDL_thread.h" 3
extern __attribute__ ((visibility("default"))) SDL_Thread * SDL_CreateThreadRuntime(SDL_ThreadFunction fn, const char *name, void *data, SDL_FunctionPointer pfnBeginThread, SDL_FunctionPointer pfnEndThread);
# 348 "/usr/local/include/SDL3/SDL_thread.h" 3
extern __attribute__ ((visibility("default"))) SDL_Thread * SDL_CreateThreadWithPropertiesRuntime(SDL_PropertiesID props, SDL_FunctionPointer pfnBeginThread, SDL_FunctionPointer pfnEndThread);
# 368 "/usr/local/include/SDL3/SDL_thread.h" 3
extern __attribute__ ((visibility("default"))) const char * SDL_GetThreadName(SDL_Thread *thread);
# 386 "/usr/local/include/SDL3/SDL_thread.h" 3
extern __attribute__ ((visibility("default"))) SDL_ThreadID SDL_GetCurrentThreadID(void);
# 403 "/usr/local/include/SDL3/SDL_thread.h" 3
extern __attribute__ ((visibility("default"))) SDL_ThreadID SDL_GetThreadID(SDL_Thread *thread);
# 418 "/usr/local/include/SDL3/SDL_thread.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetCurrentThreadPriority(SDL_ThreadPriority priority);
# 453 "/usr/local/include/SDL3/SDL_thread.h" 3
extern __attribute__ ((visibility("default"))) void SDL_WaitThread(SDL_Thread *thread, int *status);
# 466 "/usr/local/include/SDL3/SDL_thread.h" 3
extern __attribute__ ((visibility("default"))) SDL_ThreadState SDL_GetThreadState(SDL_Thread *thread);
# 502 "/usr/local/include/SDL3/SDL_thread.h" 3
extern __attribute__ ((visibility("default"))) void SDL_DetachThread(SDL_Thread *thread);
# 517 "/usr/local/include/SDL3/SDL_thread.h" 3
extern __attribute__ ((visibility("default"))) void * SDL_GetTLS(SDL_TLSID *id);
# 530 "/usr/local/include/SDL3/SDL_thread.h" 3
typedef void ( *SDL_TLSDestructorCallback)(void *value);
# 558 "/usr/local/include/SDL3/SDL_thread.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetTLS(SDL_TLSID *id, const void *value, SDL_TLSDestructorCallback destructor);
# 571 "/usr/local/include/SDL3/SDL_thread.h" 3
extern __attribute__ ((visibility("default"))) void SDL_CleanupTLS(void);



}

# 1 "/usr/local/include/SDL3/SDL_close_code.h" 1 3
# 578 "/usr/local/include/SDL3/SDL_thread.h" 2 3
# 47 "/usr/local/include/SDL3/SDL_mutex.h" 2 3
# 273 "/usr/local/include/SDL3/SDL_mutex.h" 3
# 1 "/usr/local/include/SDL3/SDL_begin_code.h" 1 3
# 274 "/usr/local/include/SDL3/SDL_mutex.h" 2 3


extern "C" {
# 296 "/usr/local/include/SDL3/SDL_mutex.h" 3
typedef struct SDL_Mutex SDL_Mutex;
# 318 "/usr/local/include/SDL3/SDL_mutex.h" 3
extern __attribute__ ((visibility("default"))) SDL_Mutex * SDL_CreateMutex(void);
# 342 "/usr/local/include/SDL3/SDL_mutex.h" 3
extern __attribute__ ((visibility("default"))) void SDL_LockMutex(SDL_Mutex *mutex) ;
# 363 "/usr/local/include/SDL3/SDL_mutex.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_TryLockMutex(SDL_Mutex *mutex) ;
# 382 "/usr/local/include/SDL3/SDL_mutex.h" 3
extern __attribute__ ((visibility("default"))) void SDL_UnlockMutex(SDL_Mutex *mutex) ;
# 399 "/usr/local/include/SDL3/SDL_mutex.h" 3
extern __attribute__ ((visibility("default"))) void SDL_DestroyMutex(SDL_Mutex *mutex);
# 427 "/usr/local/include/SDL3/SDL_mutex.h" 3
typedef struct SDL_RWLock SDL_RWLock;
# 469 "/usr/local/include/SDL3/SDL_mutex.h" 3
extern __attribute__ ((visibility("default"))) SDL_RWLock * SDL_CreateRWLock(void);
# 506 "/usr/local/include/SDL3/SDL_mutex.h" 3
extern __attribute__ ((visibility("default"))) void SDL_LockRWLockForReading(SDL_RWLock *rwlock) ;
# 537 "/usr/local/include/SDL3/SDL_mutex.h" 3
extern __attribute__ ((visibility("default"))) void SDL_LockRWLockForWriting(SDL_RWLock *rwlock) ;
# 562 "/usr/local/include/SDL3/SDL_mutex.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_TryLockRWLockForReading(SDL_RWLock *rwlock) ;
# 592 "/usr/local/include/SDL3/SDL_mutex.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_TryLockRWLockForWriting(SDL_RWLock *rwlock) ;
# 617 "/usr/local/include/SDL3/SDL_mutex.h" 3
extern __attribute__ ((visibility("default"))) void SDL_UnlockRWLock(SDL_RWLock *rwlock) ;
# 634 "/usr/local/include/SDL3/SDL_mutex.h" 3
extern __attribute__ ((visibility("default"))) void SDL_DestroyRWLock(SDL_RWLock *rwlock);
# 658 "/usr/local/include/SDL3/SDL_mutex.h" 3
typedef struct SDL_Semaphore SDL_Semaphore;
# 682 "/usr/local/include/SDL3/SDL_mutex.h" 3
extern __attribute__ ((visibility("default"))) SDL_Semaphore * SDL_CreateSemaphore(Uint32 initial_value);
# 696 "/usr/local/include/SDL3/SDL_mutex.h" 3
extern __attribute__ ((visibility("default"))) void SDL_DestroySemaphore(SDL_Semaphore *sem);
# 716 "/usr/local/include/SDL3/SDL_mutex.h" 3
extern __attribute__ ((visibility("default"))) void SDL_WaitSemaphore(SDL_Semaphore *sem);
# 735 "/usr/local/include/SDL3/SDL_mutex.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_TryWaitSemaphore(SDL_Semaphore *sem);
# 755 "/usr/local/include/SDL3/SDL_mutex.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_WaitSemaphoreTimeout(SDL_Semaphore *sem, Sint32 timeoutMS);
# 768 "/usr/local/include/SDL3/SDL_mutex.h" 3
extern __attribute__ ((visibility("default"))) void SDL_SignalSemaphore(SDL_Semaphore *sem);
# 778 "/usr/local/include/SDL3/SDL_mutex.h" 3
extern __attribute__ ((visibility("default"))) Uint32 SDL_GetSemaphoreValue(SDL_Semaphore *sem);
# 801 "/usr/local/include/SDL3/SDL_mutex.h" 3
typedef struct SDL_Condition SDL_Condition;
# 817 "/usr/local/include/SDL3/SDL_mutex.h" 3
extern __attribute__ ((visibility("default"))) SDL_Condition * SDL_CreateCondition(void);
# 828 "/usr/local/include/SDL3/SDL_mutex.h" 3
extern __attribute__ ((visibility("default"))) void SDL_DestroyCondition(SDL_Condition *cond);
# 843 "/usr/local/include/SDL3/SDL_mutex.h" 3
extern __attribute__ ((visibility("default"))) void SDL_SignalCondition(SDL_Condition *cond);
# 858 "/usr/local/include/SDL3/SDL_mutex.h" 3
extern __attribute__ ((visibility("default"))) void SDL_BroadcastCondition(SDL_Condition *cond);
# 886 "/usr/local/include/SDL3/SDL_mutex.h" 3
extern __attribute__ ((visibility("default"))) void SDL_WaitCondition(SDL_Condition *cond, SDL_Mutex *mutex);
# 916 "/usr/local/include/SDL3/SDL_mutex.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_WaitConditionTimeout(SDL_Condition *cond,
                                                SDL_Mutex *mutex, Sint32 timeoutMS);
# 931 "/usr/local/include/SDL3/SDL_mutex.h" 3
typedef enum SDL_InitStatus
{
    SDL_INIT_STATUS_UNINITIALIZED,
    SDL_INIT_STATUS_INITIALIZING,
    SDL_INIT_STATUS_INITIALIZED,
    SDL_INIT_STATUS_UNINITIALIZING
} SDL_InitStatus;
# 995 "/usr/local/include/SDL3/SDL_mutex.h" 3
typedef struct SDL_InitState
{
    SDL_AtomicInt status;
    SDL_ThreadID thread;
    void *reserved;
} SDL_InitState;
# 1023 "/usr/local/include/SDL3/SDL_mutex.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_ShouldInit(SDL_InitState *state);
# 1044 "/usr/local/include/SDL3/SDL_mutex.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_ShouldQuit(SDL_InitState *state);
# 1063 "/usr/local/include/SDL3/SDL_mutex.h" 3
extern __attribute__ ((visibility("default"))) void SDL_SetInitialized(SDL_InitState *state, bool initialized);





}

# 1 "/usr/local/include/SDL3/SDL_close_code.h" 1 3
# 1072 "/usr/local/include/SDL3/SDL_mutex.h" 2 3
# 135 "/usr/local/include/SDL3/SDL_audio.h" 2 3

# 1 "/usr/local/include/SDL3/SDL_iostream.h" 1 3
# 42 "/usr/local/include/SDL3/SDL_iostream.h" 3
# 1 "/usr/local/include/SDL3/SDL_begin_code.h" 1 3
# 43 "/usr/local/include/SDL3/SDL_iostream.h" 2 3


extern "C" {







typedef enum SDL_IOStatus
{
    SDL_IO_STATUS_READY,
    SDL_IO_STATUS_ERROR,
    SDL_IO_STATUS_EOF,
    SDL_IO_STATUS_NOT_READY,
    SDL_IO_STATUS_READONLY,
    SDL_IO_STATUS_WRITEONLY
} SDL_IOStatus;
# 71 "/usr/local/include/SDL3/SDL_iostream.h" 3
typedef enum SDL_IOWhence
{
    SDL_IO_SEEK_SET,
    SDL_IO_SEEK_CUR,
    SDL_IO_SEEK_END
} SDL_IOWhence;
# 92 "/usr/local/include/SDL3/SDL_iostream.h" 3
typedef struct SDL_IOStreamInterface
{

    Uint32 version;






    Sint64 ( *size)(void *userdata);







    Sint64 ( *seek)(void *userdata, Sint64 offset, SDL_IOWhence whence);
# 122 "/usr/local/include/SDL3/SDL_iostream.h" 3
    size_t ( *read)(void *userdata, void *ptr, size_t size, SDL_IOStatus *status);
# 134 "/usr/local/include/SDL3/SDL_iostream.h" 3
    size_t ( *write)(void *userdata, const void *ptr, size_t size, SDL_IOStatus *status);
# 145 "/usr/local/include/SDL3/SDL_iostream.h" 3
    bool ( *flush)(void *userdata, SDL_IOStatus *status);
# 158 "/usr/local/include/SDL3/SDL_iostream.h" 3
    bool ( *close)(void *userdata);

} SDL_IOStreamInterface;







static_assert((sizeof(void *) == 4 && sizeof(SDL_IOStreamInterface) == 28) || (sizeof(void *) == 8 && sizeof(SDL_IOStreamInterface) == 56), "(sizeof(void *) == 4 && sizeof(SDL_IOStreamInterface) == 28) || (sizeof(void *) == 8 && sizeof(SDL_IOStreamInterface) == 56)")

                                                                 ;
# 182 "/usr/local/include/SDL3/SDL_iostream.h" 3
typedef struct SDL_IOStream SDL_IOStream;
# 278 "/usr/local/include/SDL3/SDL_iostream.h" 3
extern __attribute__ ((visibility("default"))) SDL_IOStream * SDL_IOFromFile(const char *file, const char *mode);
# 330 "/usr/local/include/SDL3/SDL_iostream.h" 3
extern __attribute__ ((visibility("default"))) SDL_IOStream * SDL_IOFromMem(void *mem, size_t size);
# 381 "/usr/local/include/SDL3/SDL_iostream.h" 3
extern __attribute__ ((visibility("default"))) SDL_IOStream * SDL_IOFromConstMem(const void *mem, size_t size);
# 411 "/usr/local/include/SDL3/SDL_iostream.h" 3
extern __attribute__ ((visibility("default"))) SDL_IOStream * SDL_IOFromDynamicMem(void);
# 446 "/usr/local/include/SDL3/SDL_iostream.h" 3
extern __attribute__ ((visibility("default"))) SDL_IOStream * SDL_OpenIO(const SDL_IOStreamInterface *iface, void *userdata);
# 478 "/usr/local/include/SDL3/SDL_iostream.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_CloseIO(SDL_IOStream *context);
# 491 "/usr/local/include/SDL3/SDL_iostream.h" 3
extern __attribute__ ((visibility("default"))) SDL_PropertiesID SDL_GetIOProperties(SDL_IOStream *context);
# 511 "/usr/local/include/SDL3/SDL_iostream.h" 3
extern __attribute__ ((visibility("default"))) SDL_IOStatus SDL_GetIOStatus(SDL_IOStream *context);
# 525 "/usr/local/include/SDL3/SDL_iostream.h" 3
extern __attribute__ ((visibility("default"))) Sint64 SDL_GetIOSize(SDL_IOStream *context);
# 554 "/usr/local/include/SDL3/SDL_iostream.h" 3
extern __attribute__ ((visibility("default"))) Sint64 SDL_SeekIO(SDL_IOStream *context, Sint64 offset, SDL_IOWhence whence);
# 574 "/usr/local/include/SDL3/SDL_iostream.h" 3
extern __attribute__ ((visibility("default"))) Sint64 SDL_TellIO(SDL_IOStream *context);
# 604 "/usr/local/include/SDL3/SDL_iostream.h" 3
extern __attribute__ ((visibility("default"))) size_t SDL_ReadIO(SDL_IOStream *context, void *ptr, size_t size);
# 640 "/usr/local/include/SDL3/SDL_iostream.h" 3
extern __attribute__ ((visibility("default"))) size_t SDL_WriteIO(SDL_IOStream *context, const void *ptr, size_t size);
# 661 "/usr/local/include/SDL3/SDL_iostream.h" 3
extern __attribute__ ((visibility("default"))) size_t SDL_IOprintf(SDL_IOStream *context, const char *fmt, ...) __attribute__ (( format( __printf__, 2, 2 +1 )));
# 681 "/usr/local/include/SDL3/SDL_iostream.h" 3
extern __attribute__ ((visibility("default"))) size_t SDL_IOvprintf(SDL_IOStream *context, const char *fmt, va_list ap) __attribute__(( format( __printf__, 2, 0 )));
# 701 "/usr/local/include/SDL3/SDL_iostream.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_FlushIO(SDL_IOStream *context);
# 727 "/usr/local/include/SDL3/SDL_iostream.h" 3
extern __attribute__ ((visibility("default"))) void * SDL_LoadFile_IO(SDL_IOStream *src, size_t *datasize, bool closeio);
# 750 "/usr/local/include/SDL3/SDL_iostream.h" 3
extern __attribute__ ((visibility("default"))) void * SDL_LoadFile(const char *file, size_t *datasize);
# 771 "/usr/local/include/SDL3/SDL_iostream.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SaveFile_IO(SDL_IOStream *src, const void *data, size_t datasize, bool closeio);
# 790 "/usr/local/include/SDL3/SDL_iostream.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SaveFile(const char *file, const void *data, size_t datasize);
# 816 "/usr/local/include/SDL3/SDL_iostream.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_ReadU8(SDL_IOStream *src, Uint8 *value);
# 835 "/usr/local/include/SDL3/SDL_iostream.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_ReadS8(SDL_IOStream *src, Sint8 *value);
# 858 "/usr/local/include/SDL3/SDL_iostream.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_ReadU16LE(SDL_IOStream *src, Uint16 *value);
# 881 "/usr/local/include/SDL3/SDL_iostream.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_ReadS16LE(SDL_IOStream *src, Sint16 *value);
# 904 "/usr/local/include/SDL3/SDL_iostream.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_ReadU16BE(SDL_IOStream *src, Uint16 *value);
# 927 "/usr/local/include/SDL3/SDL_iostream.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_ReadS16BE(SDL_IOStream *src, Sint16 *value);
# 950 "/usr/local/include/SDL3/SDL_iostream.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_ReadU32LE(SDL_IOStream *src, Uint32 *value);
# 973 "/usr/local/include/SDL3/SDL_iostream.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_ReadS32LE(SDL_IOStream *src, Sint32 *value);
# 996 "/usr/local/include/SDL3/SDL_iostream.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_ReadU32BE(SDL_IOStream *src, Uint32 *value);
# 1019 "/usr/local/include/SDL3/SDL_iostream.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_ReadS32BE(SDL_IOStream *src, Sint32 *value);
# 1042 "/usr/local/include/SDL3/SDL_iostream.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_ReadU64LE(SDL_IOStream *src, Uint64 *value);
# 1065 "/usr/local/include/SDL3/SDL_iostream.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_ReadS64LE(SDL_IOStream *src, Sint64 *value);
# 1088 "/usr/local/include/SDL3/SDL_iostream.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_ReadU64BE(SDL_IOStream *src, Uint64 *value);
# 1111 "/usr/local/include/SDL3/SDL_iostream.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_ReadS64BE(SDL_IOStream *src, Sint64 *value);
# 1133 "/usr/local/include/SDL3/SDL_iostream.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_WriteU8(SDL_IOStream *dst, Uint8 value);
# 1147 "/usr/local/include/SDL3/SDL_iostream.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_WriteS8(SDL_IOStream *dst, Sint8 value);
# 1166 "/usr/local/include/SDL3/SDL_iostream.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_WriteU16LE(SDL_IOStream *dst, Uint16 value);
# 1185 "/usr/local/include/SDL3/SDL_iostream.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_WriteS16LE(SDL_IOStream *dst, Sint16 value);
# 1203 "/usr/local/include/SDL3/SDL_iostream.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_WriteU16BE(SDL_IOStream *dst, Uint16 value);
# 1221 "/usr/local/include/SDL3/SDL_iostream.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_WriteS16BE(SDL_IOStream *dst, Sint16 value);
# 1240 "/usr/local/include/SDL3/SDL_iostream.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_WriteU32LE(SDL_IOStream *dst, Uint32 value);
# 1259 "/usr/local/include/SDL3/SDL_iostream.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_WriteS32LE(SDL_IOStream *dst, Sint32 value);
# 1277 "/usr/local/include/SDL3/SDL_iostream.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_WriteU32BE(SDL_IOStream *dst, Uint32 value);
# 1295 "/usr/local/include/SDL3/SDL_iostream.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_WriteS32BE(SDL_IOStream *dst, Sint32 value);
# 1314 "/usr/local/include/SDL3/SDL_iostream.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_WriteU64LE(SDL_IOStream *dst, Uint64 value);
# 1333 "/usr/local/include/SDL3/SDL_iostream.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_WriteS64LE(SDL_IOStream *dst, Sint64 value);
# 1351 "/usr/local/include/SDL3/SDL_iostream.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_WriteU64BE(SDL_IOStream *dst, Uint64 value);
# 1369 "/usr/local/include/SDL3/SDL_iostream.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_WriteS64BE(SDL_IOStream *dst, Sint64 value);





}

# 1 "/usr/local/include/SDL3/SDL_close_code.h" 1 3
# 1378 "/usr/local/include/SDL3/SDL_iostream.h" 2 3
# 137 "/usr/local/include/SDL3/SDL_audio.h" 2 3

# 1 "/usr/local/include/SDL3/SDL_begin_code.h" 1 3
# 139 "/usr/local/include/SDL3/SDL_audio.h" 2 3


extern "C" {
# 221 "/usr/local/include/SDL3/SDL_audio.h" 3
typedef enum SDL_AudioFormat
{
    SDL_AUDIO_UNKNOWN = 0x0000u,
    SDL_AUDIO_U8 = 0x0008u,

    SDL_AUDIO_S8 = 0x8008u,

    SDL_AUDIO_S16LE = 0x8010u,

    SDL_AUDIO_S16BE = 0x9010u,

    SDL_AUDIO_S32LE = 0x8020u,

    SDL_AUDIO_S32BE = 0x9020u,

    SDL_AUDIO_F32LE = 0x8120u,

    SDL_AUDIO_F32BE = 0x9120u,




    SDL_AUDIO_S16 = SDL_AUDIO_S16LE,
    SDL_AUDIO_S32 = SDL_AUDIO_S32LE,
    SDL_AUDIO_F32 = SDL_AUDIO_F32LE





} SDL_AudioFormat;
# 374 "/usr/local/include/SDL3/SDL_audio.h" 3
typedef Uint32 SDL_AudioDeviceID;
# 405 "/usr/local/include/SDL3/SDL_audio.h" 3
typedef struct SDL_AudioSpec
{
    SDL_AudioFormat format;
    int channels;
    int freq;
} SDL_AudioSpec;
# 451 "/usr/local/include/SDL3/SDL_audio.h" 3
typedef struct SDL_AudioStream SDL_AudioStream;
# 477 "/usr/local/include/SDL3/SDL_audio.h" 3
extern __attribute__ ((visibility("default"))) int SDL_GetNumAudioDrivers(void);
# 501 "/usr/local/include/SDL3/SDL_audio.h" 3
extern __attribute__ ((visibility("default"))) const char * SDL_GetAudioDriver(int index);
# 517 "/usr/local/include/SDL3/SDL_audio.h" 3
extern __attribute__ ((visibility("default"))) const char * SDL_GetCurrentAudioDriver(void);
# 546 "/usr/local/include/SDL3/SDL_audio.h" 3
extern __attribute__ ((visibility("default"))) SDL_AudioDeviceID * SDL_GetAudioPlaybackDevices(int *count);
# 575 "/usr/local/include/SDL3/SDL_audio.h" 3
extern __attribute__ ((visibility("default"))) SDL_AudioDeviceID * SDL_GetAudioRecordingDevices(int *count);
# 600 "/usr/local/include/SDL3/SDL_audio.h" 3
extern __attribute__ ((visibility("default"))) const char * SDL_GetAudioDeviceName(SDL_AudioDeviceID devid);
# 635 "/usr/local/include/SDL3/SDL_audio.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetAudioDeviceFormat(SDL_AudioDeviceID devid, SDL_AudioSpec *spec, int *sample_frames);
# 658 "/usr/local/include/SDL3/SDL_audio.h" 3
extern __attribute__ ((visibility("default"))) int * SDL_GetAudioDeviceChannelMap(SDL_AudioDeviceID devid, int *count);
# 734 "/usr/local/include/SDL3/SDL_audio.h" 3
extern __attribute__ ((visibility("default"))) SDL_AudioDeviceID SDL_OpenAudioDevice(SDL_AudioDeviceID devid, const SDL_AudioSpec *spec);
# 759 "/usr/local/include/SDL3/SDL_audio.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_IsAudioDevicePhysical(SDL_AudioDeviceID devid);
# 773 "/usr/local/include/SDL3/SDL_audio.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_IsAudioDevicePlayback(SDL_AudioDeviceID devid);
# 804 "/usr/local/include/SDL3/SDL_audio.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_PauseAudioDevice(SDL_AudioDeviceID devid);
# 832 "/usr/local/include/SDL3/SDL_audio.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_ResumeAudioDevice(SDL_AudioDeviceID devid);
# 854 "/usr/local/include/SDL3/SDL_audio.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_AudioDevicePaused(SDL_AudioDeviceID devid);
# 877 "/usr/local/include/SDL3/SDL_audio.h" 3
extern __attribute__ ((visibility("default"))) float SDL_GetAudioDeviceGain(SDL_AudioDeviceID devid);
# 912 "/usr/local/include/SDL3/SDL_audio.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetAudioDeviceGain(SDL_AudioDeviceID devid, float gain);
# 933 "/usr/local/include/SDL3/SDL_audio.h" 3
extern __attribute__ ((visibility("default"))) void SDL_CloseAudioDevice(SDL_AudioDeviceID devid);
# 973 "/usr/local/include/SDL3/SDL_audio.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_BindAudioStreams(SDL_AudioDeviceID devid, SDL_AudioStream * const *streams, int num_streams);
# 994 "/usr/local/include/SDL3/SDL_audio.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_BindAudioStream(SDL_AudioDeviceID devid, SDL_AudioStream *stream);
# 1015 "/usr/local/include/SDL3/SDL_audio.h" 3
extern __attribute__ ((visibility("default"))) void SDL_UnbindAudioStreams(SDL_AudioStream * const *streams, int num_streams);
# 1031 "/usr/local/include/SDL3/SDL_audio.h" 3
extern __attribute__ ((visibility("default"))) void SDL_UnbindAudioStream(SDL_AudioStream *stream);
# 1052 "/usr/local/include/SDL3/SDL_audio.h" 3
extern __attribute__ ((visibility("default"))) SDL_AudioDeviceID SDL_GetAudioStreamDevice(SDL_AudioStream *stream);
# 1074 "/usr/local/include/SDL3/SDL_audio.h" 3
extern __attribute__ ((visibility("default"))) SDL_AudioStream * SDL_CreateAudioStream(const SDL_AudioSpec *src_spec, const SDL_AudioSpec *dst_spec);
# 1098 "/usr/local/include/SDL3/SDL_audio.h" 3
extern __attribute__ ((visibility("default"))) SDL_PropertiesID SDL_GetAudioStreamProperties(SDL_AudioStream *stream);
# 1119 "/usr/local/include/SDL3/SDL_audio.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetAudioStreamFormat(SDL_AudioStream *stream, SDL_AudioSpec *src_spec, SDL_AudioSpec *dst_spec);
# 1156 "/usr/local/include/SDL3/SDL_audio.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetAudioStreamFormat(SDL_AudioStream *stream, const SDL_AudioSpec *src_spec, const SDL_AudioSpec *dst_spec);
# 1172 "/usr/local/include/SDL3/SDL_audio.h" 3
extern __attribute__ ((visibility("default"))) float SDL_GetAudioStreamFrequencyRatio(SDL_AudioStream *stream);
# 1200 "/usr/local/include/SDL3/SDL_audio.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetAudioStreamFrequencyRatio(SDL_AudioStream *stream, float ratio);
# 1221 "/usr/local/include/SDL3/SDL_audio.h" 3
extern __attribute__ ((visibility("default"))) float SDL_GetAudioStreamGain(SDL_AudioStream *stream);
# 1246 "/usr/local/include/SDL3/SDL_audio.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetAudioStreamGain(SDL_AudioStream *stream, float gain);
# 1270 "/usr/local/include/SDL3/SDL_audio.h" 3
extern __attribute__ ((visibility("default"))) int * SDL_GetAudioStreamInputChannelMap(SDL_AudioStream *stream, int *count);
# 1294 "/usr/local/include/SDL3/SDL_audio.h" 3
extern __attribute__ ((visibility("default"))) int * SDL_GetAudioStreamOutputChannelMap(SDL_AudioStream *stream, int *count);
# 1354 "/usr/local/include/SDL3/SDL_audio.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetAudioStreamInputChannelMap(SDL_AudioStream *stream, const int *chmap, int count);
# 1412 "/usr/local/include/SDL3/SDL_audio.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetAudioStreamOutputChannelMap(SDL_AudioStream *stream, const int *chmap, int count);
# 1442 "/usr/local/include/SDL3/SDL_audio.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_PutAudioStreamData(SDL_AudioStream *stream, const void *buf, int len);
# 1472 "/usr/local/include/SDL3/SDL_audio.h" 3
typedef void ( *SDL_AudioStreamDataCompleteCallback)(void *userdata, const void *buf, int buflen);
# 1519 "/usr/local/include/SDL3/SDL_audio.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_PutAudioStreamDataNoCopy(SDL_AudioStream *stream, const void *buf, int len, SDL_AudioStreamDataCompleteCallback callback, void *userdata);
# 1572 "/usr/local/include/SDL3/SDL_audio.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_PutAudioStreamPlanarData(SDL_AudioStream *stream, const void * const *channel_buffers, int num_channels, int num_samples);
# 1602 "/usr/local/include/SDL3/SDL_audio.h" 3
extern __attribute__ ((visibility("default"))) int SDL_GetAudioStreamData(SDL_AudioStream *stream, void *buf, int len);
# 1628 "/usr/local/include/SDL3/SDL_audio.h" 3
extern __attribute__ ((visibility("default"))) int SDL_GetAudioStreamAvailable(SDL_AudioStream *stream);
# 1667 "/usr/local/include/SDL3/SDL_audio.h" 3
extern __attribute__ ((visibility("default"))) int SDL_GetAudioStreamQueued(SDL_AudioStream *stream);
# 1688 "/usr/local/include/SDL3/SDL_audio.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_FlushAudioStream(SDL_AudioStream *stream);
# 1709 "/usr/local/include/SDL3/SDL_audio.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_ClearAudioStream(SDL_AudioStream *stream);
# 1733 "/usr/local/include/SDL3/SDL_audio.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_PauseAudioStreamDevice(SDL_AudioStream *stream);
# 1756 "/usr/local/include/SDL3/SDL_audio.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_ResumeAudioStreamDevice(SDL_AudioStream *stream);
# 1775 "/usr/local/include/SDL3/SDL_audio.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_AudioStreamDevicePaused(SDL_AudioStream *stream);
# 1804 "/usr/local/include/SDL3/SDL_audio.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_LockAudioStream(SDL_AudioStream *stream);
# 1823 "/usr/local/include/SDL3/SDL_audio.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_UnlockAudioStream(SDL_AudioStream *stream);
# 1865 "/usr/local/include/SDL3/SDL_audio.h" 3
typedef void ( *SDL_AudioStreamCallback)(void *userdata, SDL_AudioStream *stream, int additional_amount, int total_amount);
# 1911 "/usr/local/include/SDL3/SDL_audio.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetAudioStreamGetCallback(SDL_AudioStream *stream, SDL_AudioStreamCallback callback, void *userdata);
# 1960 "/usr/local/include/SDL3/SDL_audio.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetAudioStreamPutCallback(SDL_AudioStream *stream, SDL_AudioStreamCallback callback, void *userdata);
# 1982 "/usr/local/include/SDL3/SDL_audio.h" 3
extern __attribute__ ((visibility("default"))) void SDL_DestroyAudioStream(SDL_AudioStream *stream);
# 2045 "/usr/local/include/SDL3/SDL_audio.h" 3
extern __attribute__ ((visibility("default"))) SDL_AudioStream * SDL_OpenAudioDeviceStream(SDL_AudioDeviceID devid, const SDL_AudioSpec *spec, SDL_AudioStreamCallback callback, void *userdata);
# 2082 "/usr/local/include/SDL3/SDL_audio.h" 3
typedef void ( *SDL_AudioPostmixCallback)(void *userdata, const SDL_AudioSpec *spec, float *buffer, int buflen);
# 2136 "/usr/local/include/SDL3/SDL_audio.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetAudioPostmixCallback(SDL_AudioDeviceID devid, SDL_AudioPostmixCallback callback, void *userdata);
# 2217 "/usr/local/include/SDL3/SDL_audio.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_LoadWAV_IO(SDL_IOStream *src, bool closeio, SDL_AudioSpec *spec, Uint8 **audio_buf, Uint32 *audio_len);
# 2253 "/usr/local/include/SDL3/SDL_audio.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_LoadWAV(const char *path, SDL_AudioSpec *spec, Uint8 **audio_buf, Uint32 *audio_len);
# 2289 "/usr/local/include/SDL3/SDL_audio.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_MixAudio(Uint8 *dst, const Uint8 *src, SDL_AudioFormat format, Uint32 len, float volume);
# 2319 "/usr/local/include/SDL3/SDL_audio.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_ConvertAudioSamples(const SDL_AudioSpec *src_spec, const Uint8 *src_data, int src_len, const SDL_AudioSpec *dst_spec, Uint8 **dst_data, int *dst_len);
# 2332 "/usr/local/include/SDL3/SDL_audio.h" 3
extern __attribute__ ((visibility("default"))) const char * SDL_GetAudioFormatName(SDL_AudioFormat format);
# 2348 "/usr/local/include/SDL3/SDL_audio.h" 3
extern __attribute__ ((visibility("default"))) int SDL_GetSilenceValueForFormat(SDL_AudioFormat format);




}

# 1 "/usr/local/include/SDL3/SDL_close_code.h" 1 3
# 2356 "/usr/local/include/SDL3/SDL_audio.h" 2 3
# 39 "/usr/local/include/SDL3/SDL.h" 2 3
# 1 "/usr/local/include/SDL3/SDL_bits.h" 1 3
# 33 "/usr/local/include/SDL3/SDL_bits.h" 3
# 1 "/usr/local/include/SDL3/SDL_begin_code.h" 1 3
# 34 "/usr/local/include/SDL3/SDL_bits.h" 2 3


extern "C" {
# 66 "/usr/local/include/SDL3/SDL_bits.h" 3
__attribute__((always_inline)) static __inline__ int SDL_MostSignificantBitIndex32(Uint32 x)
{




    if (x == 0) {
        return -1;
    }
    return 31 - __builtin_clz(x);
# 113 "/usr/local/include/SDL3/SDL_bits.h" 3
}
# 133 "/usr/local/include/SDL3/SDL_bits.h" 3
__attribute__((always_inline)) static __inline__ bool SDL_HasExactlyOneBitSet32(Uint32 x)
{
    if (x && !(x & (x - 1))) {
        return true;
    }
    return false;
}



}

# 1 "/usr/local/include/SDL3/SDL_close_code.h" 1 3
# 146 "/usr/local/include/SDL3/SDL_bits.h" 2 3
# 40 "/usr/local/include/SDL3/SDL.h" 2 3
# 1 "/usr/local/include/SDL3/SDL_blendmode.h" 1 3
# 35 "/usr/local/include/SDL3/SDL_blendmode.h" 3
# 1 "/usr/local/include/SDL3/SDL_begin_code.h" 1 3
# 36 "/usr/local/include/SDL3/SDL_blendmode.h" 2 3


extern "C" {
# 52 "/usr/local/include/SDL3/SDL_blendmode.h" 3
typedef Uint32 SDL_BlendMode;
# 69 "/usr/local/include/SDL3/SDL_blendmode.h" 3
typedef enum SDL_BlendOperation
{
    SDL_BLENDOPERATION_ADD = 0x1,
    SDL_BLENDOPERATION_SUBTRACT = 0x2,
    SDL_BLENDOPERATION_REV_SUBTRACT = 0x3,
    SDL_BLENDOPERATION_MINIMUM = 0x4,
    SDL_BLENDOPERATION_MAXIMUM = 0x5
} SDL_BlendOperation;
# 88 "/usr/local/include/SDL3/SDL_blendmode.h" 3
typedef enum SDL_BlendFactor
{
    SDL_BLENDFACTOR_ZERO = 0x1,
    SDL_BLENDFACTOR_ONE = 0x2,
    SDL_BLENDFACTOR_SRC_COLOR = 0x3,
    SDL_BLENDFACTOR_ONE_MINUS_SRC_COLOR = 0x4,
    SDL_BLENDFACTOR_SRC_ALPHA = 0x5,
    SDL_BLENDFACTOR_ONE_MINUS_SRC_ALPHA = 0x6,
    SDL_BLENDFACTOR_DST_COLOR = 0x7,
    SDL_BLENDFACTOR_ONE_MINUS_DST_COLOR = 0x8,
    SDL_BLENDFACTOR_DST_ALPHA = 0x9,
    SDL_BLENDFACTOR_ONE_MINUS_DST_ALPHA = 0xA
} SDL_BlendFactor;
# 189 "/usr/local/include/SDL3/SDL_blendmode.h" 3
extern __attribute__ ((visibility("default"))) SDL_BlendMode SDL_ComposeCustomBlendMode(SDL_BlendFactor srcColorFactor,
                                                                 SDL_BlendFactor dstColorFactor,
                                                                 SDL_BlendOperation colorOperation,
                                                                 SDL_BlendFactor srcAlphaFactor,
                                                                 SDL_BlendFactor dstAlphaFactor,
                                                                 SDL_BlendOperation alphaOperation);



}

# 1 "/usr/local/include/SDL3/SDL_close_code.h" 1 3
# 201 "/usr/local/include/SDL3/SDL_blendmode.h" 2 3
# 41 "/usr/local/include/SDL3/SDL.h" 2 3
# 1 "/usr/local/include/SDL3/SDL_camera.h" 1 3
# 73 "/usr/local/include/SDL3/SDL_camera.h" 3
# 1 "/usr/local/include/SDL3/SDL_pixels.h" 1 3
# 87 "/usr/local/include/SDL3/SDL_pixels.h" 3
# 1 "/usr/local/include/SDL3/SDL_begin_code.h" 1 3
# 88 "/usr/local/include/SDL3/SDL_pixels.h" 2 3


extern "C" {
# 134 "/usr/local/include/SDL3/SDL_pixels.h" 3
typedef enum SDL_PixelType
{
    SDL_PIXELTYPE_UNKNOWN,
    SDL_PIXELTYPE_INDEX1,
    SDL_PIXELTYPE_INDEX4,
    SDL_PIXELTYPE_INDEX8,
    SDL_PIXELTYPE_PACKED8,
    SDL_PIXELTYPE_PACKED16,
    SDL_PIXELTYPE_PACKED32,
    SDL_PIXELTYPE_ARRAYU8,
    SDL_PIXELTYPE_ARRAYU16,
    SDL_PIXELTYPE_ARRAYU32,
    SDL_PIXELTYPE_ARRAYF16,
    SDL_PIXELTYPE_ARRAYF32,

    SDL_PIXELTYPE_INDEX2
} SDL_PixelType;






typedef enum SDL_BitmapOrder
{
    SDL_BITMAPORDER_NONE,
    SDL_BITMAPORDER_4321,
    SDL_BITMAPORDER_1234
} SDL_BitmapOrder;






typedef enum SDL_PackedOrder
{
    SDL_PACKEDORDER_NONE,
    SDL_PACKEDORDER_XRGB,
    SDL_PACKEDORDER_RGBX,
    SDL_PACKEDORDER_ARGB,
    SDL_PACKEDORDER_RGBA,
    SDL_PACKEDORDER_XBGR,
    SDL_PACKEDORDER_BGRX,
    SDL_PACKEDORDER_ABGR,
    SDL_PACKEDORDER_BGRA
} SDL_PackedOrder;






typedef enum SDL_ArrayOrder
{
    SDL_ARRAYORDER_NONE,
    SDL_ARRAYORDER_RGB,
    SDL_ARRAYORDER_RGBA,
    SDL_ARRAYORDER_ARGB,
    SDL_ARRAYORDER_BGR,
    SDL_ARRAYORDER_BGRA,
    SDL_ARRAYORDER_ABGR
} SDL_ArrayOrder;






typedef enum SDL_PackedLayout
{
    SDL_PACKEDLAYOUT_NONE,
    SDL_PACKEDLAYOUT_332,
    SDL_PACKEDLAYOUT_4444,
    SDL_PACKEDLAYOUT_1555,
    SDL_PACKEDLAYOUT_5551,
    SDL_PACKEDLAYOUT_565,
    SDL_PACKEDLAYOUT_8888,
    SDL_PACKEDLAYOUT_2101010,
    SDL_PACKEDLAYOUT_1010102
} SDL_PackedLayout;
# 548 "/usr/local/include/SDL3/SDL_pixels.h" 3
typedef enum SDL_PixelFormat
{
    SDL_PIXELFORMAT_UNKNOWN = 0,
    SDL_PIXELFORMAT_INDEX1LSB = 0x11100100u,

    SDL_PIXELFORMAT_INDEX1MSB = 0x11200100u,

    SDL_PIXELFORMAT_INDEX2LSB = 0x1c100200u,

    SDL_PIXELFORMAT_INDEX2MSB = 0x1c200200u,

    SDL_PIXELFORMAT_INDEX4LSB = 0x12100400u,

    SDL_PIXELFORMAT_INDEX4MSB = 0x12200400u,

    SDL_PIXELFORMAT_INDEX8 = 0x13000801u,

    SDL_PIXELFORMAT_RGB332 = 0x14110801u,

    SDL_PIXELFORMAT_XRGB4444 = 0x15120c02u,

    SDL_PIXELFORMAT_XBGR4444 = 0x15520c02u,

    SDL_PIXELFORMAT_XRGB1555 = 0x15130f02u,

    SDL_PIXELFORMAT_XBGR1555 = 0x15530f02u,

    SDL_PIXELFORMAT_ARGB4444 = 0x15321002u,

    SDL_PIXELFORMAT_RGBA4444 = 0x15421002u,

    SDL_PIXELFORMAT_ABGR4444 = 0x15721002u,

    SDL_PIXELFORMAT_BGRA4444 = 0x15821002u,

    SDL_PIXELFORMAT_ARGB1555 = 0x15331002u,

    SDL_PIXELFORMAT_RGBA5551 = 0x15441002u,

    SDL_PIXELFORMAT_ABGR1555 = 0x15731002u,

    SDL_PIXELFORMAT_BGRA5551 = 0x15841002u,

    SDL_PIXELFORMAT_RGB565 = 0x15151002u,

    SDL_PIXELFORMAT_BGR565 = 0x15551002u,

    SDL_PIXELFORMAT_RGB24 = 0x17101803u,

    SDL_PIXELFORMAT_BGR24 = 0x17401803u,

    SDL_PIXELFORMAT_XRGB8888 = 0x16161804u,

    SDL_PIXELFORMAT_RGBX8888 = 0x16261804u,

    SDL_PIXELFORMAT_XBGR8888 = 0x16561804u,

    SDL_PIXELFORMAT_BGRX8888 = 0x16661804u,

    SDL_PIXELFORMAT_ARGB8888 = 0x16362004u,

    SDL_PIXELFORMAT_RGBA8888 = 0x16462004u,

    SDL_PIXELFORMAT_ABGR8888 = 0x16762004u,

    SDL_PIXELFORMAT_BGRA8888 = 0x16862004u,

    SDL_PIXELFORMAT_XRGB2101010 = 0x16172004u,

    SDL_PIXELFORMAT_XBGR2101010 = 0x16572004u,

    SDL_PIXELFORMAT_ARGB2101010 = 0x16372004u,

    SDL_PIXELFORMAT_ABGR2101010 = 0x16772004u,

    SDL_PIXELFORMAT_RGB48 = 0x18103006u,

    SDL_PIXELFORMAT_BGR48 = 0x18403006u,

    SDL_PIXELFORMAT_RGBA64 = 0x18204008u,

    SDL_PIXELFORMAT_ARGB64 = 0x18304008u,

    SDL_PIXELFORMAT_BGRA64 = 0x18504008u,

    SDL_PIXELFORMAT_ABGR64 = 0x18604008u,

    SDL_PIXELFORMAT_RGB48_FLOAT = 0x1a103006u,

    SDL_PIXELFORMAT_BGR48_FLOAT = 0x1a403006u,

    SDL_PIXELFORMAT_RGBA64_FLOAT = 0x1a204008u,

    SDL_PIXELFORMAT_ARGB64_FLOAT = 0x1a304008u,

    SDL_PIXELFORMAT_BGRA64_FLOAT = 0x1a504008u,

    SDL_PIXELFORMAT_ABGR64_FLOAT = 0x1a604008u,

    SDL_PIXELFORMAT_RGB96_FLOAT = 0x1b10600cu,

    SDL_PIXELFORMAT_BGR96_FLOAT = 0x1b40600cu,

    SDL_PIXELFORMAT_RGBA128_FLOAT = 0x1b208010u,

    SDL_PIXELFORMAT_ARGB128_FLOAT = 0x1b308010u,

    SDL_PIXELFORMAT_BGRA128_FLOAT = 0x1b508010u,

    SDL_PIXELFORMAT_ABGR128_FLOAT = 0x1b608010u,


    SDL_PIXELFORMAT_YV12 = 0x32315659u,

    SDL_PIXELFORMAT_IYUV = 0x56555949u,

    SDL_PIXELFORMAT_YUY2 = 0x32595559u,

    SDL_PIXELFORMAT_UYVY = 0x59565955u,

    SDL_PIXELFORMAT_YVYU = 0x55595659u,

    SDL_PIXELFORMAT_NV12 = 0x3231564eu,

    SDL_PIXELFORMAT_NV21 = 0x3132564eu,

    SDL_PIXELFORMAT_P010 = 0x30313050u,

    SDL_PIXELFORMAT_EXTERNAL_OES = 0x2053454fu,


    SDL_PIXELFORMAT_MJPG = 0x47504a4du,
# 693 "/usr/local/include/SDL3/SDL_pixels.h" 3
    SDL_PIXELFORMAT_RGBA32 = SDL_PIXELFORMAT_ABGR8888,
    SDL_PIXELFORMAT_ARGB32 = SDL_PIXELFORMAT_BGRA8888,
    SDL_PIXELFORMAT_BGRA32 = SDL_PIXELFORMAT_ARGB8888,
    SDL_PIXELFORMAT_ABGR32 = SDL_PIXELFORMAT_RGBA8888,
    SDL_PIXELFORMAT_RGBX32 = SDL_PIXELFORMAT_XBGR8888,
    SDL_PIXELFORMAT_XRGB32 = SDL_PIXELFORMAT_BGRX8888,
    SDL_PIXELFORMAT_BGRX32 = SDL_PIXELFORMAT_XRGB8888,
    SDL_PIXELFORMAT_XBGR32 = SDL_PIXELFORMAT_RGBX8888

} SDL_PixelFormat;






typedef enum SDL_ColorType
{
    SDL_COLOR_TYPE_UNKNOWN = 0,
    SDL_COLOR_TYPE_RGB = 1,
    SDL_COLOR_TYPE_YCBCR = 2
} SDL_ColorType;







typedef enum SDL_ColorRange
{
    SDL_COLOR_RANGE_UNKNOWN = 0,
    SDL_COLOR_RANGE_LIMITED = 1,
    SDL_COLOR_RANGE_FULL = 2
} SDL_ColorRange;







typedef enum SDL_ColorPrimaries
{
    SDL_COLOR_PRIMARIES_UNKNOWN = 0,
    SDL_COLOR_PRIMARIES_BT709 = 1,
    SDL_COLOR_PRIMARIES_UNSPECIFIED = 2,
    SDL_COLOR_PRIMARIES_BT470M = 4,
    SDL_COLOR_PRIMARIES_BT470BG = 5,
    SDL_COLOR_PRIMARIES_BT601 = 6,
    SDL_COLOR_PRIMARIES_SMPTE240 = 7,
    SDL_COLOR_PRIMARIES_GENERIC_FILM = 8,
    SDL_COLOR_PRIMARIES_BT2020 = 9,
    SDL_COLOR_PRIMARIES_XYZ = 10,
    SDL_COLOR_PRIMARIES_SMPTE431 = 11,
    SDL_COLOR_PRIMARIES_SMPTE432 = 12,
    SDL_COLOR_PRIMARIES_EBU3213 = 22,
    SDL_COLOR_PRIMARIES_CUSTOM = 31
} SDL_ColorPrimaries;
# 760 "/usr/local/include/SDL3/SDL_pixels.h" 3
typedef enum SDL_TransferCharacteristics
{
    SDL_TRANSFER_CHARACTERISTICS_UNKNOWN = 0,
    SDL_TRANSFER_CHARACTERISTICS_BT709 = 1,
    SDL_TRANSFER_CHARACTERISTICS_UNSPECIFIED = 2,
    SDL_TRANSFER_CHARACTERISTICS_GAMMA22 = 4,
    SDL_TRANSFER_CHARACTERISTICS_GAMMA28 = 5,
    SDL_TRANSFER_CHARACTERISTICS_BT601 = 6,
    SDL_TRANSFER_CHARACTERISTICS_SMPTE240 = 7,
    SDL_TRANSFER_CHARACTERISTICS_LINEAR = 8,
    SDL_TRANSFER_CHARACTERISTICS_LOG100 = 9,
    SDL_TRANSFER_CHARACTERISTICS_LOG100_SQRT10 = 10,
    SDL_TRANSFER_CHARACTERISTICS_IEC61966 = 11,
    SDL_TRANSFER_CHARACTERISTICS_BT1361 = 12,
    SDL_TRANSFER_CHARACTERISTICS_SRGB = 13,
    SDL_TRANSFER_CHARACTERISTICS_BT2020_10BIT = 14,
    SDL_TRANSFER_CHARACTERISTICS_BT2020_12BIT = 15,
    SDL_TRANSFER_CHARACTERISTICS_PQ = 16,
    SDL_TRANSFER_CHARACTERISTICS_SMPTE428 = 17,
    SDL_TRANSFER_CHARACTERISTICS_HLG = 18,
    SDL_TRANSFER_CHARACTERISTICS_CUSTOM = 31
} SDL_TransferCharacteristics;
# 790 "/usr/local/include/SDL3/SDL_pixels.h" 3
typedef enum SDL_MatrixCoefficients
{
    SDL_MATRIX_COEFFICIENTS_IDENTITY = 0,
    SDL_MATRIX_COEFFICIENTS_BT709 = 1,
    SDL_MATRIX_COEFFICIENTS_UNSPECIFIED = 2,
    SDL_MATRIX_COEFFICIENTS_FCC = 4,
    SDL_MATRIX_COEFFICIENTS_BT470BG = 5,
    SDL_MATRIX_COEFFICIENTS_BT601 = 6,
    SDL_MATRIX_COEFFICIENTS_SMPTE240 = 7,
    SDL_MATRIX_COEFFICIENTS_YCGCO = 8,
    SDL_MATRIX_COEFFICIENTS_BT2020_NCL = 9,
    SDL_MATRIX_COEFFICIENTS_BT2020_CL = 10,
    SDL_MATRIX_COEFFICIENTS_SMPTE2085 = 11,
    SDL_MATRIX_COEFFICIENTS_CHROMA_DERIVED_NCL = 12,
    SDL_MATRIX_COEFFICIENTS_CHROMA_DERIVED_CL = 13,
    SDL_MATRIX_COEFFICIENTS_ICTCP = 14,
    SDL_MATRIX_COEFFICIENTS_CUSTOM = 31
} SDL_MatrixCoefficients;






typedef enum SDL_ChromaLocation
{
    SDL_CHROMA_LOCATION_NONE = 0,
    SDL_CHROMA_LOCATION_LEFT = 1,
    SDL_CHROMA_LOCATION_CENTER = 2,
    SDL_CHROMA_LOCATION_TOPLEFT = 3
} SDL_ChromaLocation;
# 1011 "/usr/local/include/SDL3/SDL_pixels.h" 3
typedef enum SDL_Colorspace
{
    SDL_COLORSPACE_UNKNOWN = 0,


    SDL_COLORSPACE_SRGB = 0x120005a0u,
# 1025 "/usr/local/include/SDL3/SDL_pixels.h" 3
    SDL_COLORSPACE_SRGB_LINEAR = 0x12000500u,
# 1034 "/usr/local/include/SDL3/SDL_pixels.h" 3
    SDL_COLORSPACE_HDR10 = 0x12002600u,







    SDL_COLORSPACE_JPEG = 0x220004c6u,







    SDL_COLORSPACE_BT601_LIMITED = 0x211018c6u,







    SDL_COLORSPACE_BT601_FULL = 0x221018c6u,







    SDL_COLORSPACE_BT709_LIMITED = 0x21100421u,







    SDL_COLORSPACE_BT709_FULL = 0x22100421u,







    SDL_COLORSPACE_BT2020_LIMITED = 0x21102609u,







    SDL_COLORSPACE_BT2020_FULL = 0x22102609u,







    SDL_COLORSPACE_RGB_DEFAULT = SDL_COLORSPACE_SRGB,
    SDL_COLORSPACE_YUV_DEFAULT = SDL_COLORSPACE_BT601_LIMITED
} SDL_Colorspace;
# 1112 "/usr/local/include/SDL3/SDL_pixels.h" 3
typedef struct SDL_Color
{
    Uint8 r;
    Uint8 g;
    Uint8 b;
    Uint8 a;
} SDL_Color;







typedef struct SDL_FColor
{
    float r;
    float g;
    float b;
    float a;
} SDL_FColor;
# 1141 "/usr/local/include/SDL3/SDL_pixels.h" 3
typedef struct SDL_Palette
{
    int ncolors;
    SDL_Color *colors;
    Uint32 version;
    int refcount;
} SDL_Palette;






typedef struct SDL_PixelFormatDetails
{
    SDL_PixelFormat format;
    Uint8 bits_per_pixel;
    Uint8 bytes_per_pixel;
    Uint8 padding[2];
    Uint32 Rmask;
    Uint32 Gmask;
    Uint32 Bmask;
    Uint32 Amask;
    Uint8 Rbits;
    Uint8 Gbits;
    Uint8 Bbits;
    Uint8 Abits;
    Uint8 Rshift;
    Uint8 Gshift;
    Uint8 Bshift;
    Uint8 Ashift;
} SDL_PixelFormatDetails;
# 1185 "/usr/local/include/SDL3/SDL_pixels.h" 3
extern __attribute__ ((visibility("default"))) const char * SDL_GetPixelFormatName(SDL_PixelFormat format);
# 1205 "/usr/local/include/SDL3/SDL_pixels.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetMasksForPixelFormat(SDL_PixelFormat format, int *bpp, Uint32 *Rmask, Uint32 *Gmask, Uint32 *Bmask, Uint32 *Amask);
# 1227 "/usr/local/include/SDL3/SDL_pixels.h" 3
extern __attribute__ ((visibility("default"))) SDL_PixelFormat SDL_GetPixelFormatForMasks(int bpp, Uint32 Rmask, Uint32 Gmask, Uint32 Bmask, Uint32 Amask);
# 1244 "/usr/local/include/SDL3/SDL_pixels.h" 3
extern __attribute__ ((visibility("default"))) const SDL_PixelFormatDetails * SDL_GetPixelFormatDetails(SDL_PixelFormat format);
# 1264 "/usr/local/include/SDL3/SDL_pixels.h" 3
extern __attribute__ ((visibility("default"))) SDL_Palette * SDL_CreatePalette(int ncolors);
# 1281 "/usr/local/include/SDL3/SDL_pixels.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetPaletteColors(SDL_Palette *palette, const SDL_Color *colors, int firstcolor, int ncolors);
# 1295 "/usr/local/include/SDL3/SDL_pixels.h" 3
extern __attribute__ ((visibility("default"))) void SDL_DestroyPalette(SDL_Palette *palette);
# 1333 "/usr/local/include/SDL3/SDL_pixels.h" 3
extern __attribute__ ((visibility("default"))) Uint32 SDL_MapRGB(const SDL_PixelFormatDetails *format, const SDL_Palette *palette, Uint8 r, Uint8 g, Uint8 b);
# 1372 "/usr/local/include/SDL3/SDL_pixels.h" 3
extern __attribute__ ((visibility("default"))) Uint32 SDL_MapRGBA(const SDL_PixelFormatDetails *format, const SDL_Palette *palette, Uint8 r, Uint8 g, Uint8 b, Uint8 a);
# 1400 "/usr/local/include/SDL3/SDL_pixels.h" 3
extern __attribute__ ((visibility("default"))) void SDL_GetRGB(Uint32 pixelvalue, const SDL_PixelFormatDetails *format, const SDL_Palette *palette, Uint8 *r, Uint8 *g, Uint8 *b);
# 1432 "/usr/local/include/SDL3/SDL_pixels.h" 3
extern __attribute__ ((visibility("default"))) void SDL_GetRGBA(Uint32 pixelvalue, const SDL_PixelFormatDetails *format, const SDL_Palette *palette, Uint8 *r, Uint8 *g, Uint8 *b, Uint8 *a);




}

# 1 "/usr/local/include/SDL3/SDL_close_code.h" 1 3
# 1440 "/usr/local/include/SDL3/SDL_pixels.h" 2 3
# 74 "/usr/local/include/SDL3/SDL_camera.h" 2 3

# 1 "/usr/local/include/SDL3/SDL_surface.h" 1 3
# 52 "/usr/local/include/SDL3/SDL_surface.h" 3
# 1 "/usr/local/include/SDL3/SDL_rect.h" 1 3
# 35 "/usr/local/include/SDL3/SDL_rect.h" 3
# 1 "/usr/local/include/SDL3/SDL_begin_code.h" 1 3
# 36 "/usr/local/include/SDL3/SDL_rect.h" 2 3


extern "C" {
# 49 "/usr/local/include/SDL3/SDL_rect.h" 3
typedef struct SDL_Point
{
    int x;
    int y;
} SDL_Point;
# 63 "/usr/local/include/SDL3/SDL_rect.h" 3
typedef struct SDL_FPoint
{
    float x;
    float y;
} SDL_FPoint;
# 83 "/usr/local/include/SDL3/SDL_rect.h" 3
typedef struct SDL_Rect
{
    int x, y;
    int w, h;
} SDL_Rect;
# 109 "/usr/local/include/SDL3/SDL_rect.h" 3
typedef struct SDL_FRect
{
    float x;
    float y;
    float w;
    float h;
} SDL_FRect;
# 129 "/usr/local/include/SDL3/SDL_rect.h" 3
__attribute__((always_inline)) static __inline__ void SDL_RectToFRect(const SDL_Rect *rect, SDL_FRect *frect)
{
    frect->x = static_cast<float>(rect->x);
    frect->y = static_cast<float>(rect->y);
    frect->w = static_cast<float>(rect->w);
    frect->h = static_cast<float>(rect->h);
}
# 158 "/usr/local/include/SDL3/SDL_rect.h" 3
__attribute__((always_inline)) static __inline__ bool SDL_PointInRect(const SDL_Point *p, const SDL_Rect *r)
{
    return ( p && r && (p->x >= r->x) && (p->x < (r->x + r->w)) &&
             (p->y >= r->y) && (p->y < (r->y + r->h)) ) ? true : false;
}
# 182 "/usr/local/include/SDL3/SDL_rect.h" 3
__attribute__((always_inline)) static __inline__ bool SDL_RectEmpty(const SDL_Rect *r)
{
    return ((!r) || (r->w <= 0) || (r->h <= 0)) ? true : false;
}
# 206 "/usr/local/include/SDL3/SDL_rect.h" 3
__attribute__((always_inline)) static __inline__ bool SDL_RectsEqual(const SDL_Rect *a, const SDL_Rect *b)
{
    return (a && b && (a->x == b->x) && (a->y == b->y) &&
            (a->w == b->w) && (a->h == b->h)) ? true : false;
}
# 227 "/usr/local/include/SDL3/SDL_rect.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_HasRectIntersection(const SDL_Rect *A, const SDL_Rect *B);
# 244 "/usr/local/include/SDL3/SDL_rect.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetRectIntersection(const SDL_Rect *A, const SDL_Rect *B, SDL_Rect *result);
# 258 "/usr/local/include/SDL3/SDL_rect.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetRectUnion(const SDL_Rect *A, const SDL_Rect *B, SDL_Rect *result);
# 277 "/usr/local/include/SDL3/SDL_rect.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetRectEnclosingPoints(const SDL_Point *points, int count, const SDL_Rect *clip, SDL_Rect *result);
# 297 "/usr/local/include/SDL3/SDL_rect.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetRectAndLineIntersection(const SDL_Rect *rect, int *X1, int *Y1, int *X2, int *Y2);
# 323 "/usr/local/include/SDL3/SDL_rect.h" 3
__attribute__((always_inline)) static __inline__ bool SDL_PointInRectFloat(const SDL_FPoint *p, const SDL_FRect *r)
{
    return ( p && r && (p->x >= r->x) && (p->x <= (r->x + r->w)) &&
             (p->y >= r->y) && (p->y <= (r->y + r->h)) ) ? true : false;
}
# 347 "/usr/local/include/SDL3/SDL_rect.h" 3
__attribute__((always_inline)) static __inline__ bool SDL_RectEmptyFloat(const SDL_FRect *r)
{
    return ((!r) || (r->w < 0.0f) || (r->h < 0.0f)) ? true : false;
}
# 377 "/usr/local/include/SDL3/SDL_rect.h" 3
__attribute__((always_inline)) static __inline__ bool SDL_RectsEqualEpsilon(const SDL_FRect *a, const SDL_FRect *b, float epsilon)
{
    return (a && b && ((a == b) ||
            ((SDL_fabsf(a->x - b->x) <= epsilon) &&
            (SDL_fabsf(a->y - b->y) <= epsilon) &&
            (SDL_fabsf(a->w - b->w) <= epsilon) &&
            (SDL_fabsf(a->h - b->h) <= epsilon))))
            ? true : false;
}
# 412 "/usr/local/include/SDL3/SDL_rect.h" 3
__attribute__((always_inline)) static __inline__ bool SDL_RectsEqualFloat(const SDL_FRect *a, const SDL_FRect *b)
{
    return SDL_RectsEqualEpsilon(a, b, 1.1920928955078125e-07F);
}
# 430 "/usr/local/include/SDL3/SDL_rect.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_HasRectIntersectionFloat(const SDL_FRect *A, const SDL_FRect *B);
# 447 "/usr/local/include/SDL3/SDL_rect.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetRectIntersectionFloat(const SDL_FRect *A, const SDL_FRect *B, SDL_FRect *result);
# 461 "/usr/local/include/SDL3/SDL_rect.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetRectUnionFloat(const SDL_FRect *A, const SDL_FRect *B, SDL_FRect *result);
# 481 "/usr/local/include/SDL3/SDL_rect.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetRectEnclosingPointsFloat(const SDL_FPoint *points, int count, const SDL_FRect *clip, SDL_FRect *result);
# 502 "/usr/local/include/SDL3/SDL_rect.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetRectAndLineIntersectionFloat(const SDL_FRect *rect, float *X1, float *Y1, float *X2, float *Y2);



}

# 1 "/usr/local/include/SDL3/SDL_close_code.h" 1 3
# 509 "/usr/local/include/SDL3/SDL_rect.h" 2 3
# 53 "/usr/local/include/SDL3/SDL_surface.h" 2 3


# 1 "/usr/local/include/SDL3/SDL_begin_code.h" 1 3
# 56 "/usr/local/include/SDL3/SDL_surface.h" 2 3


extern "C" {
# 68 "/usr/local/include/SDL3/SDL_surface.h" 3
typedef Uint32 SDL_SurfaceFlags;
# 87 "/usr/local/include/SDL3/SDL_surface.h" 3
typedef enum SDL_ScaleMode
{
    SDL_SCALEMODE_INVALID = -1,
    SDL_SCALEMODE_NEAREST,
    SDL_SCALEMODE_LINEAR,
    SDL_SCALEMODE_PIXELART
} SDL_ScaleMode;






typedef enum SDL_FlipMode
{
    SDL_FLIP_NONE,
    SDL_FLIP_HORIZONTAL,
    SDL_FLIP_VERTICAL,
    SDL_FLIP_HORIZONTAL_AND_VERTICAL = (SDL_FLIP_HORIZONTAL | SDL_FLIP_VERTICAL)
} SDL_FlipMode;
# 138 "/usr/local/include/SDL3/SDL_surface.h" 3
struct SDL_Surface
{
    SDL_SurfaceFlags flags;
    SDL_PixelFormat format;
    int w;
    int h;
    int pitch;
    void *pixels;

    int refcount;

    void *reserved;
};


typedef struct SDL_Surface SDL_Surface;
# 173 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) SDL_Surface * SDL_CreateSurface(int width, int height, SDL_PixelFormat format);
# 203 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) SDL_Surface * SDL_CreateSurfaceFrom(int width, int height, SDL_PixelFormat format, void *pixels, int pitch);
# 219 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) void SDL_DestroySurface(SDL_Surface *surface);
# 259 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) SDL_PropertiesID SDL_GetSurfaceProperties(SDL_Surface *surface);
# 287 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetSurfaceColorspace(SDL_Surface *surface, SDL_Colorspace colorspace);
# 307 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) SDL_Colorspace SDL_GetSurfaceColorspace(SDL_Surface *surface);
# 338 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) SDL_Palette * SDL_CreateSurfacePalette(SDL_Surface *surface);
# 361 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetSurfacePalette(SDL_Surface *surface, SDL_Palette *palette);
# 376 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) SDL_Palette * SDL_GetSurfacePalette(SDL_Surface *surface);
# 404 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_AddSurfaceAlternateImage(SDL_Surface *surface, SDL_Surface *image);
# 420 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SurfaceHasAlternateImages(SDL_Surface *surface);
# 448 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) SDL_Surface ** SDL_GetSurfaceImages(SDL_Surface *surface, int *count);
# 467 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) void SDL_RemoveSurfaceAlternateImages(SDL_Surface *surface);
# 495 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_LockSurface(SDL_Surface *surface);
# 510 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) void SDL_UnlockSurface(SDL_Surface *surface);
# 531 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) SDL_Surface * SDL_LoadSurface_IO(SDL_IOStream *src, bool closeio);
# 550 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) SDL_Surface * SDL_LoadSurface(const char *file);
# 572 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) SDL_Surface * SDL_LoadBMP_IO(SDL_IOStream *src, bool closeio);
# 592 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) SDL_Surface * SDL_LoadBMP(const char *file);
# 618 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SaveBMP_IO(SDL_Surface *surface, SDL_IOStream *dst, bool closeio);
# 642 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SaveBMP(SDL_Surface *surface, const char *file);
# 668 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) SDL_Surface * SDL_LoadPNG_IO(SDL_IOStream *src, bool closeio);
# 692 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) SDL_Surface * SDL_LoadPNG(const char *file);
# 712 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SavePNG_IO(SDL_Surface *surface, SDL_IOStream *dst, bool closeio);
# 730 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SavePNG(SDL_Surface *surface, const char *file);
# 752 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetSurfaceRLE(SDL_Surface *surface, bool enabled);
# 768 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SurfaceHasRLE(SDL_Surface *surface);
# 795 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetSurfaceColorKey(SDL_Surface *surface, bool enabled, Uint32 key);
# 812 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SurfaceHasColorKey(SDL_Surface *surface);
# 834 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetSurfaceColorKey(SDL_Surface *surface, Uint32 *key);
# 860 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetSurfaceColorMod(SDL_Surface *surface, Uint8 r, Uint8 g, Uint8 b);
# 881 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetSurfaceColorMod(SDL_Surface *surface, Uint8 *r, Uint8 *g, Uint8 *b);
# 904 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetSurfaceAlphaMod(SDL_Surface *surface, Uint8 alpha);
# 921 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetSurfaceAlphaMod(SDL_Surface *surface, Uint8 *alpha);
# 942 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetSurfaceBlendMode(SDL_Surface *surface, SDL_BlendMode blendMode);
# 958 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetSurfaceBlendMode(SDL_Surface *surface, SDL_BlendMode *blendMode);
# 982 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetSurfaceClipRect(SDL_Surface *surface, const SDL_Rect *rect);
# 1004 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetSurfaceClipRect(SDL_Surface *surface, SDL_Rect *rect);
# 1019 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_FlipSurface(SDL_Surface *surface, SDL_FlipMode flip);
# 1048 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) SDL_Surface * SDL_RotateSurface(SDL_Surface *surface, float angle);
# 1069 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) SDL_Surface * SDL_DuplicateSurface(SDL_Surface *surface);
# 1091 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) SDL_Surface * SDL_ScaleSurface(SDL_Surface *surface, int width, int height, SDL_ScaleMode scaleMode);
# 1120 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) SDL_Surface * SDL_ConvertSurface(SDL_Surface *surface, SDL_PixelFormat format);
# 1149 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) SDL_Surface * SDL_ConvertSurfaceAndColorspace(SDL_Surface *surface, SDL_PixelFormat format, SDL_Palette *palette, SDL_Colorspace colorspace, SDL_PropertiesID props);
# 1173 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_ConvertPixels(int width, int height, SDL_PixelFormat src_format, const void *src, int src_pitch, SDL_PixelFormat dst_format, void *dst, int dst_pitch);
# 1206 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_ConvertPixelsAndColorspace(int width, int height, SDL_PixelFormat src_format, SDL_Colorspace src_colorspace, SDL_PropertiesID src_properties, const void *src, int src_pitch, SDL_PixelFormat dst_format, SDL_Colorspace dst_colorspace, SDL_PropertiesID dst_properties, void *dst, int dst_pitch);
# 1232 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_PremultiplyAlpha(int width, int height, SDL_PixelFormat src_format, const void *src, int src_pitch, SDL_PixelFormat dst_format, void *dst, int dst_pitch, bool linear);
# 1250 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_PremultiplySurfaceAlpha(SDL_Surface *surface, bool linear);
# 1273 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_ClearSurface(SDL_Surface *surface, float r, float g, float b, float a);
# 1301 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_FillSurfaceRect(SDL_Surface *dst, const SDL_Rect *rect, Uint32 color);
# 1329 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_FillSurfaceRects(SDL_Surface *dst, const SDL_Rect *rects, int count, Uint32 color);
# 1402 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_BlitSurface(SDL_Surface *src, const SDL_Rect *srcrect, SDL_Surface *dst, const SDL_Rect *dstrect);
# 1426 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_BlitSurfaceUnchecked(SDL_Surface *src, const SDL_Rect *srcrect, SDL_Surface *dst, const SDL_Rect *dstrect);
# 1450 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_BlitSurfaceScaled(SDL_Surface *src, const SDL_Rect *srcrect, SDL_Surface *dst, const SDL_Rect *dstrect, SDL_ScaleMode scaleMode);
# 1475 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_BlitSurfaceUncheckedScaled(SDL_Surface *src, const SDL_Rect *srcrect, SDL_Surface *dst, const SDL_Rect *dstrect, SDL_ScaleMode scaleMode);
# 1498 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_StretchSurface(SDL_Surface *src, const SDL_Rect *srcrect, SDL_Surface *dst, const SDL_Rect *dstrect, SDL_ScaleMode scaleMode);
# 1523 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_BlitSurfaceTiled(SDL_Surface *src, const SDL_Rect *srcrect, SDL_Surface *dst, const SDL_Rect *dstrect);
# 1552 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_BlitSurfaceTiledWithScale(SDL_Surface *src, const SDL_Rect *srcrect, float scale, SDL_ScaleMode scaleMode, SDL_Surface *dst, const SDL_Rect *dstrect);
# 1588 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_BlitSurface9Grid(SDL_Surface *src, const SDL_Rect *srcrect, int left_width, int right_width, int top_height, int bottom_height, float scale, SDL_ScaleMode scaleMode, SDL_Surface *dst, const SDL_Rect *dstrect);
# 1621 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) Uint32 SDL_MapSurfaceRGB(SDL_Surface *surface, Uint8 r, Uint8 g, Uint8 b);
# 1655 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) Uint32 SDL_MapSurfaceRGBA(SDL_Surface *surface, Uint8 r, Uint8 g, Uint8 b, Uint8 a);
# 1685 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_ReadSurfacePixel(SDL_Surface *surface, int x, int y, Uint8 *r, Uint8 *g, Uint8 *b, Uint8 *a);
# 1712 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_ReadSurfacePixelFloat(SDL_Surface *surface, int x, int y, float *r, float *g, float *b, float *a);
# 1738 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_WriteSurfacePixel(SDL_Surface *surface, int x, int y, Uint8 r, Uint8 g, Uint8 b, Uint8 a);
# 1761 "/usr/local/include/SDL3/SDL_surface.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_WriteSurfacePixelFloat(SDL_Surface *surface, int x, int y, float r, float g, float b, float a);



}

# 1 "/usr/local/include/SDL3/SDL_close_code.h" 1 3
# 1768 "/usr/local/include/SDL3/SDL_surface.h" 2 3
# 76 "/usr/local/include/SDL3/SDL_camera.h" 2 3

# 1 "/usr/local/include/SDL3/SDL_begin_code.h" 1 3
# 78 "/usr/local/include/SDL3/SDL_camera.h" 2 3


extern "C" {
# 95 "/usr/local/include/SDL3/SDL_camera.h" 3
typedef Uint32 SDL_CameraID;






typedef struct SDL_Camera SDL_Camera;
# 115 "/usr/local/include/SDL3/SDL_camera.h" 3
typedef struct SDL_CameraSpec
{
    SDL_PixelFormat format;
    SDL_Colorspace colorspace;
    int width;
    int height;
    int framerate_numerator;
    int framerate_denominator;
} SDL_CameraSpec;
# 132 "/usr/local/include/SDL3/SDL_camera.h" 3
typedef enum SDL_CameraPosition
{
    SDL_CAMERA_POSITION_UNKNOWN,
    SDL_CAMERA_POSITION_FRONT_FACING,
    SDL_CAMERA_POSITION_BACK_FACING
} SDL_CameraPosition;
# 146 "/usr/local/include/SDL3/SDL_camera.h" 3
typedef enum SDL_CameraPermissionState
{
    SDL_CAMERA_PERMISSION_STATE_DENIED = -1,
    SDL_CAMERA_PERMISSION_STATE_PENDING,
    SDL_CAMERA_PERMISSION_STATE_APPROVED
} SDL_CameraPermissionState;
# 175 "/usr/local/include/SDL3/SDL_camera.h" 3
extern __attribute__ ((visibility("default"))) int SDL_GetNumCameraDrivers(void);
# 199 "/usr/local/include/SDL3/SDL_camera.h" 3
extern __attribute__ ((visibility("default"))) const char * SDL_GetCameraDriver(int index);
# 215 "/usr/local/include/SDL3/SDL_camera.h" 3
extern __attribute__ ((visibility("default"))) const char * SDL_GetCurrentCameraDriver(void);
# 232 "/usr/local/include/SDL3/SDL_camera.h" 3
extern __attribute__ ((visibility("default"))) SDL_CameraID * SDL_GetCameras(int *count);
# 271 "/usr/local/include/SDL3/SDL_camera.h" 3
extern __attribute__ ((visibility("default"))) SDL_CameraSpec ** SDL_GetCameraSupportedFormats(SDL_CameraID instance_id, int *count);
# 286 "/usr/local/include/SDL3/SDL_camera.h" 3
extern __attribute__ ((visibility("default"))) const char * SDL_GetCameraName(SDL_CameraID instance_id);
# 305 "/usr/local/include/SDL3/SDL_camera.h" 3
extern __attribute__ ((visibility("default"))) SDL_CameraPosition SDL_GetCameraPosition(SDL_CameraID instance_id);
# 352 "/usr/local/include/SDL3/SDL_camera.h" 3
extern __attribute__ ((visibility("default"))) SDL_Camera * SDL_OpenCamera(SDL_CameraID instance_id, const SDL_CameraSpec *spec);
# 387 "/usr/local/include/SDL3/SDL_camera.h" 3
extern __attribute__ ((visibility("default"))) SDL_CameraPermissionState SDL_GetCameraPermissionState(SDL_Camera *camera);
# 402 "/usr/local/include/SDL3/SDL_camera.h" 3
extern __attribute__ ((visibility("default"))) SDL_CameraID SDL_GetCameraID(SDL_Camera *camera);
# 415 "/usr/local/include/SDL3/SDL_camera.h" 3
extern __attribute__ ((visibility("default"))) SDL_PropertiesID SDL_GetCameraProperties(SDL_Camera *camera);
# 441 "/usr/local/include/SDL3/SDL_camera.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetCameraFormat(SDL_Camera *camera, SDL_CameraSpec *spec);
# 484 "/usr/local/include/SDL3/SDL_camera.h" 3
extern __attribute__ ((visibility("default"))) SDL_Surface * SDL_AcquireCameraFrame(SDL_Camera *camera, Uint64 *timestampNS);
# 512 "/usr/local/include/SDL3/SDL_camera.h" 3
extern __attribute__ ((visibility("default"))) void SDL_ReleaseCameraFrame(SDL_Camera *camera, SDL_Surface *frame);
# 527 "/usr/local/include/SDL3/SDL_camera.h" 3
extern __attribute__ ((visibility("default"))) void SDL_CloseCamera(SDL_Camera *camera);



}

# 1 "/usr/local/include/SDL3/SDL_close_code.h" 1 3
# 534 "/usr/local/include/SDL3/SDL_camera.h" 2 3
# 42 "/usr/local/include/SDL3/SDL.h" 2 3
# 1 "/usr/local/include/SDL3/SDL_clipboard.h" 1 3
# 82 "/usr/local/include/SDL3/SDL_clipboard.h" 3
# 1 "/usr/local/include/SDL3/SDL_begin_code.h" 1 3
# 83 "/usr/local/include/SDL3/SDL_clipboard.h" 2 3


extern "C" {
# 104 "/usr/local/include/SDL3/SDL_clipboard.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetClipboardText(const char *text);
# 123 "/usr/local/include/SDL3/SDL_clipboard.h" 3
extern __attribute__ ((visibility("default"))) char * SDL_GetClipboardText(void);
# 137 "/usr/local/include/SDL3/SDL_clipboard.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_HasClipboardText(void);
# 153 "/usr/local/include/SDL3/SDL_clipboard.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetPrimarySelectionText(const char *text);
# 172 "/usr/local/include/SDL3/SDL_clipboard.h" 3
extern __attribute__ ((visibility("default"))) char * SDL_GetPrimarySelectionText(void);
# 187 "/usr/local/include/SDL3/SDL_clipboard.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_HasPrimarySelectionText(void);
# 210 "/usr/local/include/SDL3/SDL_clipboard.h" 3
typedef const void *( *SDL_ClipboardDataCallback)(void *userdata, const char *mime_type, size_t *size);
# 222 "/usr/local/include/SDL3/SDL_clipboard.h" 3
typedef void ( *SDL_ClipboardCleanupCallback)(void *userdata);
# 255 "/usr/local/include/SDL3/SDL_clipboard.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetClipboardData(SDL_ClipboardDataCallback callback, SDL_ClipboardCleanupCallback cleanup, void *userdata, const char **mime_types, size_t num_mime_types);
# 269 "/usr/local/include/SDL3/SDL_clipboard.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_ClearClipboardData(void);
# 290 "/usr/local/include/SDL3/SDL_clipboard.h" 3
extern __attribute__ ((visibility("default"))) void * SDL_GetClipboardData(const char *mime_type, size_t *size);
# 306 "/usr/local/include/SDL3/SDL_clipboard.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_HasClipboardData(const char *mime_type);
# 323 "/usr/local/include/SDL3/SDL_clipboard.h" 3
extern __attribute__ ((visibility("default"))) char ** SDL_GetClipboardMimeTypes(size_t *num_mime_types);



}

# 1 "/usr/local/include/SDL3/SDL_close_code.h" 1 3
# 330 "/usr/local/include/SDL3/SDL_clipboard.h" 2 3
# 43 "/usr/local/include/SDL3/SDL.h" 2 3
# 1 "/usr/local/include/SDL3/SDL_cpuinfo.h" 1 3
# 45 "/usr/local/include/SDL3/SDL_cpuinfo.h" 3
# 1 "/usr/local/include/SDL3/SDL_begin_code.h" 1 3
# 46 "/usr/local/include/SDL3/SDL_cpuinfo.h" 2 3


extern "C" {
# 73 "/usr/local/include/SDL3/SDL_cpuinfo.h" 3
extern __attribute__ ((visibility("default"))) int SDL_GetNumLogicalCPUCores(void);
# 87 "/usr/local/include/SDL3/SDL_cpuinfo.h" 3
extern __attribute__ ((visibility("default"))) int SDL_GetCPUCacheLineSize(void);
# 101 "/usr/local/include/SDL3/SDL_cpuinfo.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_HasAltiVec(void);
# 114 "/usr/local/include/SDL3/SDL_cpuinfo.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_HasMMX(void);
# 132 "/usr/local/include/SDL3/SDL_cpuinfo.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_HasSSE(void);
# 150 "/usr/local/include/SDL3/SDL_cpuinfo.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_HasSSE2(void);
# 168 "/usr/local/include/SDL3/SDL_cpuinfo.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_HasSSE3(void);
# 186 "/usr/local/include/SDL3/SDL_cpuinfo.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_HasSSE41(void);
# 204 "/usr/local/include/SDL3/SDL_cpuinfo.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_HasSSE42(void);
# 220 "/usr/local/include/SDL3/SDL_cpuinfo.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_HasAVX(void);
# 236 "/usr/local/include/SDL3/SDL_cpuinfo.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_HasAVX2(void);
# 252 "/usr/local/include/SDL3/SDL_cpuinfo.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_HasAVX512F(void);
# 269 "/usr/local/include/SDL3/SDL_cpuinfo.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_HasARMSIMD(void);
# 282 "/usr/local/include/SDL3/SDL_cpuinfo.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_HasNEON(void);
# 296 "/usr/local/include/SDL3/SDL_cpuinfo.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_HasLSX(void);
# 310 "/usr/local/include/SDL3/SDL_cpuinfo.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_HasLASX(void);
# 321 "/usr/local/include/SDL3/SDL_cpuinfo.h" 3
extern __attribute__ ((visibility("default"))) int SDL_GetSystemRAM(void);
# 345 "/usr/local/include/SDL3/SDL_cpuinfo.h" 3
extern __attribute__ ((visibility("default"))) size_t SDL_GetSIMDAlignment(void);
# 366 "/usr/local/include/SDL3/SDL_cpuinfo.h" 3
extern __attribute__ ((visibility("default"))) int SDL_GetSystemPageSize(void);



}

# 1 "/usr/local/include/SDL3/SDL_close_code.h" 1 3
# 373 "/usr/local/include/SDL3/SDL_cpuinfo.h" 2 3
# 44 "/usr/local/include/SDL3/SDL.h" 2 3
# 1 "/usr/local/include/SDL3/SDL_dialog.h" 1 3
# 43 "/usr/local/include/SDL3/SDL_dialog.h" 3
# 1 "/usr/local/include/SDL3/SDL_video.h" 1 3
# 59 "/usr/local/include/SDL3/SDL_video.h" 3
# 1 "/usr/local/include/SDL3/SDL_begin_code.h" 1 3
# 60 "/usr/local/include/SDL3/SDL_video.h" 2 3


extern "C" {
# 75 "/usr/local/include/SDL3/SDL_video.h" 3
typedef Uint32 SDL_DisplayID;
# 84 "/usr/local/include/SDL3/SDL_video.h" 3
typedef Uint32 SDL_WindowID;
# 110 "/usr/local/include/SDL3/SDL_video.h" 3
typedef enum SDL_SystemTheme
{
    SDL_SYSTEM_THEME_UNKNOWN,
    SDL_SYSTEM_THEME_LIGHT,
    SDL_SYSTEM_THEME_DARK
} SDL_SystemTheme;
# 126 "/usr/local/include/SDL3/SDL_video.h" 3
typedef struct SDL_DisplayModeData SDL_DisplayModeData;
# 139 "/usr/local/include/SDL3/SDL_video.h" 3
typedef struct SDL_DisplayMode
{
    SDL_DisplayID displayID;
    SDL_PixelFormat format;
    int w;
    int h;
    float pixel_density;
    float refresh_rate;
    int refresh_rate_numerator;
    int refresh_rate_denominator;

    SDL_DisplayModeData *internal;

} SDL_DisplayMode;






typedef enum SDL_DisplayOrientation
{
    SDL_ORIENTATION_UNKNOWN,
    SDL_ORIENTATION_LANDSCAPE,
    SDL_ORIENTATION_LANDSCAPE_FLIPPED,
    SDL_ORIENTATION_PORTRAIT,
    SDL_ORIENTATION_PORTRAIT_FLIPPED
} SDL_DisplayOrientation;
# 175 "/usr/local/include/SDL3/SDL_video.h" 3
typedef struct SDL_Window SDL_Window;
# 195 "/usr/local/include/SDL3/SDL_video.h" 3
typedef Uint64 SDL_WindowFlags;
# 328 "/usr/local/include/SDL3/SDL_video.h" 3
typedef enum SDL_FlashOperation
{
    SDL_FLASH_CANCEL,
    SDL_FLASH_BRIEFLY,
    SDL_FLASH_UNTIL_FOCUSED
} SDL_FlashOperation;






typedef enum SDL_ProgressState
{
    SDL_PROGRESS_STATE_INVALID = -1,
    SDL_PROGRESS_STATE_NONE,
    SDL_PROGRESS_STATE_INDETERMINATE,
    SDL_PROGRESS_STATE_NORMAL,
    SDL_PROGRESS_STATE_PAUSED,
    SDL_PROGRESS_STATE_ERROR
} SDL_ProgressState;
# 360 "/usr/local/include/SDL3/SDL_video.h" 3
typedef struct SDL_GLContextState *SDL_GLContext;






typedef void *SDL_EGLDisplay;






typedef void *SDL_EGLConfig;






typedef void *SDL_EGLSurface;






typedef intptr_t SDL_EGLAttrib;






typedef int SDL_EGLint;
# 420 "/usr/local/include/SDL3/SDL_video.h" 3
typedef SDL_EGLAttrib *( *SDL_EGLAttribArrayCallback)(void *userdata);
# 451 "/usr/local/include/SDL3/SDL_video.h" 3
typedef SDL_EGLint *( *SDL_EGLIntArrayCallback)(void *userdata, SDL_EGLDisplay display, SDL_EGLConfig config);
# 470 "/usr/local/include/SDL3/SDL_video.h" 3
typedef enum SDL_GLAttr
{
    SDL_GL_RED_SIZE,
    SDL_GL_GREEN_SIZE,
    SDL_GL_BLUE_SIZE,
    SDL_GL_ALPHA_SIZE,
    SDL_GL_BUFFER_SIZE,
    SDL_GL_DOUBLEBUFFER,
    SDL_GL_DEPTH_SIZE,
    SDL_GL_STENCIL_SIZE,
    SDL_GL_ACCUM_RED_SIZE,
    SDL_GL_ACCUM_GREEN_SIZE,
    SDL_GL_ACCUM_BLUE_SIZE,
    SDL_GL_ACCUM_ALPHA_SIZE,
    SDL_GL_STEREO,
    SDL_GL_MULTISAMPLEBUFFERS,
    SDL_GL_MULTISAMPLESAMPLES,
    SDL_GL_ACCELERATED_VISUAL,
    SDL_GL_RETAINED_BACKING,
    SDL_GL_CONTEXT_MAJOR_VERSION,
    SDL_GL_CONTEXT_MINOR_VERSION,
    SDL_GL_CONTEXT_FLAGS,
    SDL_GL_CONTEXT_PROFILE_MASK,
    SDL_GL_SHARE_WITH_CURRENT_CONTEXT,
    SDL_GL_FRAMEBUFFER_SRGB_CAPABLE,
    SDL_GL_CONTEXT_RELEASE_BEHAVIOR,
    SDL_GL_CONTEXT_RESET_NOTIFICATION,
    SDL_GL_CONTEXT_NO_ERROR,
    SDL_GL_FLOATBUFFERS,
    SDL_GL_EGL_PLATFORM
} SDL_GLAttr;






typedef Uint32 SDL_GLProfile;
# 519 "/usr/local/include/SDL3/SDL_video.h" 3
typedef Uint32 SDL_GLContextFlag;
# 533 "/usr/local/include/SDL3/SDL_video.h" 3
typedef Uint32 SDL_GLContextReleaseFlag;
# 544 "/usr/local/include/SDL3/SDL_video.h" 3
typedef Uint32 SDL_GLContextResetNotification;
# 563 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) int SDL_GetNumVideoDrivers(void);
# 585 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) const char * SDL_GetVideoDriver(int index);
# 604 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) const char * SDL_GetCurrentVideoDriver(void);
# 615 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) SDL_SystemTheme SDL_GetSystemTheme(void);
# 630 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) SDL_DisplayID * SDL_GetDisplays(int *count);
# 644 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) SDL_DisplayID SDL_GetPrimaryDisplay(void);
# 682 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) SDL_PropertiesID SDL_GetDisplayProperties(SDL_DisplayID displayID);
# 702 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) const char * SDL_GetDisplayName(SDL_DisplayID displayID);
# 722 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetDisplayBounds(SDL_DisplayID displayID, SDL_Rect *rect);
# 748 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetDisplayUsableBounds(SDL_DisplayID displayID, SDL_Rect *rect);
# 763 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) SDL_DisplayOrientation SDL_GetNaturalDisplayOrientation(SDL_DisplayID displayID);
# 778 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) SDL_DisplayOrientation SDL_GetCurrentDisplayOrientation(SDL_DisplayID displayID);
# 805 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) float SDL_GetDisplayContentScale(SDL_DisplayID displayID);
# 833 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) SDL_DisplayMode ** SDL_GetFullscreenDisplayModes(SDL_DisplayID displayID, int *count);
# 864 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetClosestFullscreenDisplayMode(SDL_DisplayID displayID, int w, int h, float refresh_rate, bool include_high_density_modes, SDL_DisplayMode *closest);
# 885 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) const SDL_DisplayMode * SDL_GetDesktopDisplayMode(SDL_DisplayID displayID);
# 906 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) const SDL_DisplayMode * SDL_GetCurrentDisplayMode(SDL_DisplayID displayID);
# 922 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) SDL_DisplayID SDL_GetDisplayForPoint(const SDL_Point *point);
# 939 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) SDL_DisplayID SDL_GetDisplayForRect(const SDL_Rect *rect);
# 956 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) SDL_DisplayID SDL_GetDisplayForWindow(SDL_Window *window);
# 975 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) float SDL_GetWindowPixelDensity(SDL_Window *window);
# 999 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) float SDL_GetWindowDisplayScale(SDL_Window *window);
# 1034 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetWindowFullscreenMode(SDL_Window *window, const SDL_DisplayMode *mode);
# 1050 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) const SDL_DisplayMode * SDL_GetWindowFullscreenMode(SDL_Window *window);
# 1065 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) void * SDL_GetWindowICCProfile(SDL_Window *window, size_t *size);
# 1079 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) SDL_PixelFormat SDL_GetWindowPixelFormat(SDL_Window *window);
# 1095 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) SDL_Window ** SDL_GetWindows(int *count);
# 1184 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) SDL_Window * SDL_CreateWindow(const char *title, int w, int h, SDL_WindowFlags flags);
# 1260 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) SDL_Window * SDL_CreatePopupWindow(SDL_Window *parent, int offset_x, int offset_y, int w, int h, SDL_WindowFlags flags);
# 1409 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) SDL_Window * SDL_CreateWindowWithProperties(SDL_PropertiesID props);
# 1466 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) SDL_WindowID SDL_GetWindowID(SDL_Window *window);
# 1484 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) SDL_Window * SDL_GetWindowFromID(SDL_WindowID id);
# 1499 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) SDL_Window * SDL_GetWindowParent(SDL_Window *window);
# 1635 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) SDL_PropertiesID SDL_GetWindowProperties(SDL_Window *window);
# 1696 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) SDL_WindowFlags SDL_GetWindowFlags(SDL_Window *window);
# 1714 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetWindowTitle(SDL_Window *window, const char *title);
# 1729 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) const char * SDL_GetWindowTitle(SDL_Window *window);
# 1756 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetWindowIcon(SDL_Window *window, SDL_Surface *icon);
# 1797 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetWindowPosition(SDL_Window *window, int x, int y);
# 1822 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetWindowPosition(SDL_Window *window, int *x, int *y);
# 1859 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetWindowSize(SDL_Window *window, int w, int h);
# 1883 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetWindowSize(SDL_Window *window, int *w, int *h);
# 1905 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetWindowSafeArea(SDL_Window *window, SDL_Rect *rect);
# 1946 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetWindowAspectRatio(SDL_Window *window, float min_aspect, float max_aspect);
# 1965 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetWindowAspectRatio(SDL_Window *window, float *min_aspect, float *max_aspect);
# 2002 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetWindowBordersSize(SDL_Window *window, int *top, int *left, int *bottom, int *right);
# 2022 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetWindowSizeInPixels(SDL_Window *window, int *w, int *h);
# 2040 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetWindowMinimumSize(SDL_Window *window, int min_w, int min_h);
# 2060 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetWindowMinimumSize(SDL_Window *window, int *w, int *h);
# 2078 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetWindowMaximumSize(SDL_Window *window, int max_w, int max_h);
# 2098 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetWindowMaximumSize(SDL_Window *window, int *w, int *h);
# 2120 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetWindowBordered(SDL_Window *window, bool bordered);
# 2142 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetWindowResizable(SDL_Window *window, bool resizable);
# 2161 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetWindowAlwaysOnTop(SDL_Window *window, bool on_top);
# 2192 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetWindowFillDocument(SDL_Window *window, bool fill);
# 2208 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_ShowWindow(SDL_Window *window);
# 2224 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_HideWindow(SDL_Window *window);
# 2244 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_RaiseWindow(SDL_Window *window);
# 2278 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_MaximizeWindow(SDL_Window *window);
# 2307 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_MinimizeWindow(SDL_Window *window);
# 2337 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_RestoreWindow(SDL_Window *window);
# 2369 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetWindowFullscreen(SDL_Window *window, bool fullscreen);
# 2400 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SyncWindow(SDL_Window *window);
# 2415 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_WindowHasSurface(SDL_Window *window);
# 2444 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) SDL_Surface * SDL_GetWindowSurface(SDL_Window *window);
# 2470 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetWindowSurfaceVSync(SDL_Window *window, int vsync);
# 2490 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetWindowSurfaceVSync(SDL_Window *window, int *vsync);
# 2511 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_UpdateWindowSurface(SDL_Window *window);
# 2540 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_UpdateWindowSurfaceRects(SDL_Window *window, const SDL_Rect *rects, int numrects);
# 2556 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_DestroyWindowSurface(SDL_Window *window);
# 2589 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetWindowKeyboardGrab(SDL_Window *window, bool grabbed);
# 2609 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetWindowMouseGrab(SDL_Window *window, bool grabbed);
# 2623 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetWindowKeyboardGrab(SDL_Window *window);
# 2640 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetWindowMouseGrab(SDL_Window *window);
# 2654 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) SDL_Window * SDL_GetGrabbedWindow(void);
# 2676 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetWindowMouseRect(SDL_Window *window, const SDL_Rect *rect);
# 2693 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) const SDL_Rect * SDL_GetWindowMouseRect(SDL_Window *window);
# 2714 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetWindowOpacity(SDL_Window *window, float opacity);
# 2732 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) float SDL_GetWindowOpacity(SDL_Window *window);
# 2766 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetWindowParent(SDL_Window *window, SDL_Window *parent);
# 2786 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetWindowModal(SDL_Window *window, bool modal);
# 2800 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetWindowFocusable(SDL_Window *window, bool focusable);
# 2826 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_ShowWindowSystemMenu(SDL_Window *window, int x, int y);
# 2837 "/usr/local/include/SDL3/SDL_video.h" 3
typedef enum SDL_HitTestResult
{
    SDL_HITTEST_NORMAL,
    SDL_HITTEST_DRAGGABLE,
    SDL_HITTEST_RESIZE_TOPLEFT,
    SDL_HITTEST_RESIZE_TOP,
    SDL_HITTEST_RESIZE_TOPRIGHT,
    SDL_HITTEST_RESIZE_RIGHT,
    SDL_HITTEST_RESIZE_BOTTOMRIGHT,
    SDL_HITTEST_RESIZE_BOTTOM,
    SDL_HITTEST_RESIZE_BOTTOMLEFT,
    SDL_HITTEST_RESIZE_LEFT
} SDL_HitTestResult;
# 2861 "/usr/local/include/SDL3/SDL_video.h" 3
typedef SDL_HitTestResult ( *SDL_HitTest)(SDL_Window *win,
                                                 const SDL_Point *area,
                                                 void *data);
# 2907 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetWindowHitTest(SDL_Window *window, SDL_HitTest callback, void *callback_data);
# 2935 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetWindowShape(SDL_Window *window, SDL_Surface *shape);
# 2949 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_FlashWindow(SDL_Window *window, SDL_FlashOperation operation);
# 2964 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetWindowProgressState(SDL_Window *window, SDL_ProgressState state);
# 2977 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) SDL_ProgressState SDL_GetWindowProgressState(SDL_Window *window);
# 2992 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetWindowProgressValue(SDL_Window *window, float value);
# 3005 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) float SDL_GetWindowProgressValue(SDL_Window *window);
# 3027 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) void SDL_DestroyWindow(SDL_Window *window);
# 3046 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_ScreenSaverEnabled(void);
# 3061 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_EnableScreenSaver(void);
# 3082 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_DisableScreenSaver(void);
# 3112 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GL_LoadLibrary(const char *path);
# 3167 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) SDL_FunctionPointer SDL_GL_GetProcAddress(const char *proc);
# 3186 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) SDL_FunctionPointer SDL_EGL_GetProcAddress(const char *proc);
# 3197 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) void SDL_GL_UnloadLibrary(void);
# 3220 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GL_ExtensionSupported(const char *extension);
# 3232 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) void SDL_GL_ResetAttributes(void);
# 3255 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GL_SetAttribute(SDL_GLAttr attr, int value);
# 3273 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GL_GetAttribute(SDL_GLAttr attr, int *value);
# 3303 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) SDL_GLContext SDL_GL_CreateContext(SDL_Window *window);
# 3321 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GL_MakeCurrent(SDL_Window *window, SDL_GLContext context);
# 3333 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) SDL_Window * SDL_GL_GetCurrentWindow(void);
# 3347 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) SDL_GLContext SDL_GL_GetCurrentContext(void);
# 3359 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) SDL_EGLDisplay SDL_EGL_GetCurrentDisplay(void);
# 3371 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) SDL_EGLConfig SDL_EGL_GetCurrentConfig(void);
# 3384 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) SDL_EGLSurface SDL_EGL_GetWindowSurface(SDL_Window *window);
# 3406 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) void SDL_EGL_SetAttributeCallbacks(SDL_EGLAttribArrayCallback platformAttribCallback,
                                                               SDL_EGLIntArrayCallback surfaceAttribCallback,
                                                               SDL_EGLIntArrayCallback contextAttribCallback, void *userdata);
# 3439 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GL_SetSwapInterval(int interval);
# 3460 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GL_GetSwapInterval(int *interval);
# 3480 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GL_SwapWindow(SDL_Window *window);
# 3495 "/usr/local/include/SDL3/SDL_video.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GL_DestroyContext(SDL_GLContext context);






}

# 1 "/usr/local/include/SDL3/SDL_close_code.h" 1 3
# 3505 "/usr/local/include/SDL3/SDL_video.h" 2 3
# 44 "/usr/local/include/SDL3/SDL_dialog.h" 2 3

# 1 "/usr/local/include/SDL3/SDL_begin_code.h" 1 3
# 46 "/usr/local/include/SDL3/SDL_dialog.h" 2 3


extern "C" {
# 70 "/usr/local/include/SDL3/SDL_dialog.h" 3
typedef struct SDL_DialogFileFilter
{
    const char *name;
    const char *pattern;
} SDL_DialogFileFilter;
# 113 "/usr/local/include/SDL3/SDL_dialog.h" 3
typedef void ( *SDL_DialogFileCallback)(void *userdata, const char * const *filelist, int filter);
# 166 "/usr/local/include/SDL3/SDL_dialog.h" 3
extern __attribute__ ((visibility("default"))) void SDL_ShowOpenFileDialog(SDL_DialogFileCallback callback, void *userdata, SDL_Window *window, const SDL_DialogFileFilter *filters, int nfilters, const char *default_location, bool allow_many);
# 215 "/usr/local/include/SDL3/SDL_dialog.h" 3
extern __attribute__ ((visibility("default"))) void SDL_ShowSaveFileDialog(SDL_DialogFileCallback callback, void *userdata, SDL_Window *window, const SDL_DialogFileFilter *filters, int nfilters, const char *default_location);
# 260 "/usr/local/include/SDL3/SDL_dialog.h" 3
extern __attribute__ ((visibility("default"))) void SDL_ShowOpenFolderDialog(SDL_DialogFileCallback callback, void *userdata, SDL_Window *window, const char *default_location, bool allow_many);
# 272 "/usr/local/include/SDL3/SDL_dialog.h" 3
typedef enum SDL_FileDialogType
{
    SDL_FILEDIALOG_OPENFILE,
    SDL_FILEDIALOG_SAVEFILE,
    SDL_FILEDIALOG_OPENFOLDER
} SDL_FileDialogType;
# 326 "/usr/local/include/SDL3/SDL_dialog.h" 3
extern __attribute__ ((visibility("default"))) void SDL_ShowFileDialogWithProperties(SDL_FileDialogType type, SDL_DialogFileCallback callback, void *userdata, SDL_PropertiesID props);
# 339 "/usr/local/include/SDL3/SDL_dialog.h" 3
}

# 1 "/usr/local/include/SDL3/SDL_close_code.h" 1 3
# 342 "/usr/local/include/SDL3/SDL_dialog.h" 2 3
# 45 "/usr/local/include/SDL3/SDL.h" 2 3
# 1 "/usr/local/include/SDL3/SDL_dlopennote.h" 1 3
# 46 "/usr/local/include/SDL3/SDL.h" 2 3


# 1 "/usr/local/include/SDL3/SDL_events.h" 1 3
# 59 "/usr/local/include/SDL3/SDL_events.h" 3
# 1 "/usr/local/include/SDL3/SDL_gamepad.h" 1 3
# 82 "/usr/local/include/SDL3/SDL_gamepad.h" 3
# 1 "/usr/local/include/SDL3/SDL_guid.h" 1 3
# 38 "/usr/local/include/SDL3/SDL_guid.h" 3
# 1 "/usr/local/include/SDL3/SDL_begin_code.h" 1 3
# 39 "/usr/local/include/SDL3/SDL_guid.h" 2 3


extern "C" {
# 61 "/usr/local/include/SDL3/SDL_guid.h" 3
typedef struct SDL_GUID {
    Uint8 data[16];
} SDL_GUID;
# 80 "/usr/local/include/SDL3/SDL_guid.h" 3
extern __attribute__ ((visibility("default"))) void SDL_GUIDToString(SDL_GUID guid, char *pszGUID, int cbGUID);
# 98 "/usr/local/include/SDL3/SDL_guid.h" 3
extern __attribute__ ((visibility("default"))) SDL_GUID SDL_StringToGUID(const char *pchGUID);



}

# 1 "/usr/local/include/SDL3/SDL_close_code.h" 1 3
# 105 "/usr/local/include/SDL3/SDL_guid.h" 2 3
# 83 "/usr/local/include/SDL3/SDL_gamepad.h" 2 3

# 1 "/usr/local/include/SDL3/SDL_joystick.h" 1 3
# 68 "/usr/local/include/SDL3/SDL_joystick.h" 3
# 1 "/usr/local/include/SDL3/SDL_power.h" 1 3
# 43 "/usr/local/include/SDL3/SDL_power.h" 3
# 1 "/usr/local/include/SDL3/SDL_begin_code.h" 1 3
# 44 "/usr/local/include/SDL3/SDL_power.h" 2 3


extern "C" {
# 56 "/usr/local/include/SDL3/SDL_power.h" 3
typedef enum SDL_PowerState
{
    SDL_POWERSTATE_ERROR = -1,
    SDL_POWERSTATE_UNKNOWN,
    SDL_POWERSTATE_ON_BATTERY,
    SDL_POWERSTATE_NO_BATTERY,
    SDL_POWERSTATE_CHARGING,
    SDL_POWERSTATE_CHARGED
} SDL_PowerState;
# 98 "/usr/local/include/SDL3/SDL_power.h" 3
extern __attribute__ ((visibility("default"))) SDL_PowerState SDL_GetPowerInfo(int *seconds, int *percent);



}

# 1 "/usr/local/include/SDL3/SDL_close_code.h" 1 3
# 105 "/usr/local/include/SDL3/SDL_power.h" 2 3
# 69 "/usr/local/include/SDL3/SDL_joystick.h" 2 3

# 1 "/usr/local/include/SDL3/SDL_sensor.h" 1 3
# 41 "/usr/local/include/SDL3/SDL_sensor.h" 3
# 1 "/usr/local/include/SDL3/SDL_begin_code.h" 1 3
# 42 "/usr/local/include/SDL3/SDL_sensor.h" 2 3



extern "C" {
# 54 "/usr/local/include/SDL3/SDL_sensor.h" 3
typedef struct SDL_Sensor SDL_Sensor;
# 64 "/usr/local/include/SDL3/SDL_sensor.h" 3
typedef Uint32 SDL_SensorID;
# 132 "/usr/local/include/SDL3/SDL_sensor.h" 3
typedef enum SDL_SensorType
{
    SDL_SENSOR_INVALID = -1,
    SDL_SENSOR_UNKNOWN,
    SDL_SENSOR_ACCEL,
    SDL_SENSOR_GYRO,
    SDL_SENSOR_ACCEL_L,
    SDL_SENSOR_GYRO_L,
    SDL_SENSOR_ACCEL_R,
    SDL_SENSOR_GYRO_R,
    SDL_SENSOR_COUNT
} SDL_SensorType;
# 159 "/usr/local/include/SDL3/SDL_sensor.h" 3
extern __attribute__ ((visibility("default"))) SDL_SensorID * SDL_GetSensors(int *count);
# 171 "/usr/local/include/SDL3/SDL_sensor.h" 3
extern __attribute__ ((visibility("default"))) const char * SDL_GetSensorNameForID(SDL_SensorID instance_id);
# 184 "/usr/local/include/SDL3/SDL_sensor.h" 3
extern __attribute__ ((visibility("default"))) SDL_SensorType SDL_GetSensorTypeForID(SDL_SensorID instance_id);
# 197 "/usr/local/include/SDL3/SDL_sensor.h" 3
extern __attribute__ ((visibility("default"))) int SDL_GetSensorNonPortableTypeForID(SDL_SensorID instance_id);
# 208 "/usr/local/include/SDL3/SDL_sensor.h" 3
extern __attribute__ ((visibility("default"))) SDL_Sensor * SDL_OpenSensor(SDL_SensorID instance_id);
# 219 "/usr/local/include/SDL3/SDL_sensor.h" 3
extern __attribute__ ((visibility("default"))) SDL_Sensor * SDL_GetSensorFromID(SDL_SensorID instance_id);
# 230 "/usr/local/include/SDL3/SDL_sensor.h" 3
extern __attribute__ ((visibility("default"))) SDL_PropertiesID SDL_GetSensorProperties(SDL_Sensor *sensor);
# 241 "/usr/local/include/SDL3/SDL_sensor.h" 3
extern __attribute__ ((visibility("default"))) const char * SDL_GetSensorName(SDL_Sensor *sensor);
# 252 "/usr/local/include/SDL3/SDL_sensor.h" 3
extern __attribute__ ((visibility("default"))) SDL_SensorType SDL_GetSensorType(SDL_Sensor *sensor);
# 262 "/usr/local/include/SDL3/SDL_sensor.h" 3
extern __attribute__ ((visibility("default"))) int SDL_GetSensorNonPortableType(SDL_Sensor *sensor);
# 273 "/usr/local/include/SDL3/SDL_sensor.h" 3
extern __attribute__ ((visibility("default"))) SDL_SensorID SDL_GetSensorID(SDL_Sensor *sensor);
# 288 "/usr/local/include/SDL3/SDL_sensor.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetSensorData(SDL_Sensor *sensor, float *data, int num_values);
# 297 "/usr/local/include/SDL3/SDL_sensor.h" 3
extern __attribute__ ((visibility("default"))) void SDL_CloseSensor(SDL_Sensor *sensor);
# 310 "/usr/local/include/SDL3/SDL_sensor.h" 3
extern __attribute__ ((visibility("default"))) void SDL_UpdateSensors(void);





}


# 1 "/usr/local/include/SDL3/SDL_close_code.h" 1 3
# 320 "/usr/local/include/SDL3/SDL_sensor.h" 2 3
# 71 "/usr/local/include/SDL3/SDL_joystick.h" 2 3

# 1 "/usr/local/include/SDL3/SDL_begin_code.h" 1 3
# 73 "/usr/local/include/SDL3/SDL_joystick.h" 2 3


extern "C" {
# 94 "/usr/local/include/SDL3/SDL_joystick.h" 3
typedef struct SDL_Joystick SDL_Joystick;
# 106 "/usr/local/include/SDL3/SDL_joystick.h" 3
typedef Uint32 SDL_JoystickID;
# 124 "/usr/local/include/SDL3/SDL_joystick.h" 3
typedef enum SDL_JoystickType
{
    SDL_JOYSTICK_TYPE_UNKNOWN,
    SDL_JOYSTICK_TYPE_GAMEPAD,
    SDL_JOYSTICK_TYPE_WHEEL,
    SDL_JOYSTICK_TYPE_ARCADE_STICK,
    SDL_JOYSTICK_TYPE_FLIGHT_STICK,
    SDL_JOYSTICK_TYPE_DANCE_PAD,
    SDL_JOYSTICK_TYPE_GUITAR,
    SDL_JOYSTICK_TYPE_DRUM_KIT,
    SDL_JOYSTICK_TYPE_ARCADE_PAD,
    SDL_JOYSTICK_TYPE_THROTTLE,
    SDL_JOYSTICK_TYPE_COUNT
} SDL_JoystickType;
# 147 "/usr/local/include/SDL3/SDL_joystick.h" 3
typedef enum SDL_JoystickConnectionState
{
    SDL_JOYSTICK_CONNECTION_INVALID = -1,
    SDL_JOYSTICK_CONNECTION_UNKNOWN,
    SDL_JOYSTICK_CONNECTION_WIRED,
    SDL_JOYSTICK_CONNECTION_WIRELESS
} SDL_JoystickConnectionState;
# 189 "/usr/local/include/SDL3/SDL_joystick.h" 3
extern __attribute__ ((visibility("default"))) void SDL_LockJoysticks(void) ;
# 204 "/usr/local/include/SDL3/SDL_joystick.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_TryLockJoysticks(void) ;
# 214 "/usr/local/include/SDL3/SDL_joystick.h" 3
extern __attribute__ ((visibility("default"))) void SDL_UnlockJoysticks(void) ;
# 227 "/usr/local/include/SDL3/SDL_joystick.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_HasJoystick(void);
# 245 "/usr/local/include/SDL3/SDL_joystick.h" 3
extern __attribute__ ((visibility("default"))) SDL_JoystickID * SDL_GetJoysticks(int *count);
# 263 "/usr/local/include/SDL3/SDL_joystick.h" 3
extern __attribute__ ((visibility("default"))) const char * SDL_GetJoystickNameForID(SDL_JoystickID instance_id);
# 281 "/usr/local/include/SDL3/SDL_joystick.h" 3
extern __attribute__ ((visibility("default"))) const char * SDL_GetJoystickPathForID(SDL_JoystickID instance_id);
# 298 "/usr/local/include/SDL3/SDL_joystick.h" 3
extern __attribute__ ((visibility("default"))) int SDL_GetJoystickPlayerIndexForID(SDL_JoystickID instance_id);
# 316 "/usr/local/include/SDL3/SDL_joystick.h" 3
extern __attribute__ ((visibility("default"))) SDL_GUID SDL_GetJoystickGUIDForID(SDL_JoystickID instance_id);
# 335 "/usr/local/include/SDL3/SDL_joystick.h" 3
extern __attribute__ ((visibility("default"))) Uint16 SDL_GetJoystickVendorForID(SDL_JoystickID instance_id);
# 354 "/usr/local/include/SDL3/SDL_joystick.h" 3
extern __attribute__ ((visibility("default"))) Uint16 SDL_GetJoystickProductForID(SDL_JoystickID instance_id);
# 373 "/usr/local/include/SDL3/SDL_joystick.h" 3
extern __attribute__ ((visibility("default"))) Uint16 SDL_GetJoystickProductVersionForID(SDL_JoystickID instance_id);
# 392 "/usr/local/include/SDL3/SDL_joystick.h" 3
extern __attribute__ ((visibility("default"))) SDL_JoystickType SDL_GetJoystickTypeForID(SDL_JoystickID instance_id);
# 410 "/usr/local/include/SDL3/SDL_joystick.h" 3
extern __attribute__ ((visibility("default"))) SDL_Joystick * SDL_OpenJoystick(SDL_JoystickID instance_id);
# 423 "/usr/local/include/SDL3/SDL_joystick.h" 3
extern __attribute__ ((visibility("default"))) SDL_Joystick * SDL_GetJoystickFromID(SDL_JoystickID instance_id);
# 439 "/usr/local/include/SDL3/SDL_joystick.h" 3
extern __attribute__ ((visibility("default"))) SDL_Joystick * SDL_GetJoystickFromPlayerIndex(int player_index);
# 448 "/usr/local/include/SDL3/SDL_joystick.h" 3
typedef struct SDL_VirtualJoystickTouchpadDesc
{
    Uint16 nfingers;
    Uint16 padding[3];
} SDL_VirtualJoystickTouchpadDesc;
# 461 "/usr/local/include/SDL3/SDL_joystick.h" 3
typedef struct SDL_VirtualJoystickSensorDesc
{
    SDL_SensorType type;
    float rate;
} SDL_VirtualJoystickSensorDesc;
# 480 "/usr/local/include/SDL3/SDL_joystick.h" 3
typedef struct SDL_VirtualJoystickDesc
{
    Uint32 version;
    Uint16 type;
    Uint16 padding;
    Uint16 vendor_id;
    Uint16 product_id;
    Uint16 naxes;
    Uint16 nbuttons;
    Uint16 nballs;
    Uint16 nhats;
    Uint16 ntouchpads;
    Uint16 nsensors;
    Uint16 padding2[2];
    Uint32 button_mask;

    Uint32 axis_mask;

    const char *name;
    const SDL_VirtualJoystickTouchpadDesc *touchpads;
    const SDL_VirtualJoystickSensorDesc *sensors;

    void *userdata;
    void ( *Update)(void *userdata);
    void ( *SetPlayerIndex)(void *userdata, int player_index);
    bool ( *Rumble)(void *userdata, Uint16 low_frequency_rumble, Uint16 high_frequency_rumble);
    bool ( *RumbleTriggers)(void *userdata, Uint16 left_rumble, Uint16 right_rumble);
    bool ( *SetLED)(void *userdata, Uint8 red, Uint8 green, Uint8 blue);
    bool ( *SendEffect)(void *userdata, const void *data, int size);
    bool ( *SetSensorsEnabled)(void *userdata, bool enabled);
    void ( *Cleanup)(void *userdata);
} SDL_VirtualJoystickDesc;







static_assert((sizeof(void *) == 4 && sizeof(SDL_VirtualJoystickDesc) == 84) || (sizeof(void *) == 8 && sizeof(SDL_VirtualJoystickDesc) == 136), "(sizeof(void *) == 4 && sizeof(SDL_VirtualJoystickDesc) == 84) || (sizeof(void *) == 8 && sizeof(SDL_VirtualJoystickDesc) == 136)")

                                                                    ;
# 554 "/usr/local/include/SDL3/SDL_joystick.h" 3
extern __attribute__ ((visibility("default"))) SDL_JoystickID SDL_AttachVirtualJoystick(const SDL_VirtualJoystickDesc *desc);
# 570 "/usr/local/include/SDL3/SDL_joystick.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_DetachVirtualJoystick(SDL_JoystickID instance_id);
# 582 "/usr/local/include/SDL3/SDL_joystick.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_IsJoystickVirtual(SDL_JoystickID instance_id);
# 613 "/usr/local/include/SDL3/SDL_joystick.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetJoystickVirtualAxis(SDL_Joystick *joystick, int axis, Sint16 value);
# 641 "/usr/local/include/SDL3/SDL_joystick.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetJoystickVirtualBall(SDL_Joystick *joystick, int ball, Sint16 xrel, Sint16 yrel);
# 668 "/usr/local/include/SDL3/SDL_joystick.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetJoystickVirtualButton(SDL_Joystick *joystick, int button, bool down);
# 695 "/usr/local/include/SDL3/SDL_joystick.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetJoystickVirtualHat(SDL_Joystick *joystick, int hat, Uint8 value);
# 729 "/usr/local/include/SDL3/SDL_joystick.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetJoystickVirtualTouchpad(SDL_Joystick *joystick, int touchpad, int finger, bool down, float x, float y, float pressure);
# 759 "/usr/local/include/SDL3/SDL_joystick.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SendJoystickVirtualSensorData(SDL_Joystick *joystick, SDL_SensorType type, Uint64 sensor_timestamp, const float *data, int num_values);
# 785 "/usr/local/include/SDL3/SDL_joystick.h" 3
extern __attribute__ ((visibility("default"))) SDL_PropertiesID SDL_GetJoystickProperties(SDL_Joystick *joystick);
# 806 "/usr/local/include/SDL3/SDL_joystick.h" 3
extern __attribute__ ((visibility("default"))) const char * SDL_GetJoystickName(SDL_Joystick *joystick);
# 821 "/usr/local/include/SDL3/SDL_joystick.h" 3
extern __attribute__ ((visibility("default"))) const char * SDL_GetJoystickPath(SDL_Joystick *joystick);
# 838 "/usr/local/include/SDL3/SDL_joystick.h" 3
extern __attribute__ ((visibility("default"))) int SDL_GetJoystickPlayerIndex(SDL_Joystick *joystick);
# 855 "/usr/local/include/SDL3/SDL_joystick.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetJoystickPlayerIndex(SDL_Joystick *joystick, int player_index);
# 874 "/usr/local/include/SDL3/SDL_joystick.h" 3
extern __attribute__ ((visibility("default"))) SDL_GUID SDL_GetJoystickGUID(SDL_Joystick *joystick);
# 890 "/usr/local/include/SDL3/SDL_joystick.h" 3
extern __attribute__ ((visibility("default"))) Uint16 SDL_GetJoystickVendor(SDL_Joystick *joystick);
# 906 "/usr/local/include/SDL3/SDL_joystick.h" 3
extern __attribute__ ((visibility("default"))) Uint16 SDL_GetJoystickProduct(SDL_Joystick *joystick);
# 922 "/usr/local/include/SDL3/SDL_joystick.h" 3
extern __attribute__ ((visibility("default"))) Uint16 SDL_GetJoystickProductVersion(SDL_Joystick *joystick);
# 937 "/usr/local/include/SDL3/SDL_joystick.h" 3
extern __attribute__ ((visibility("default"))) Uint16 SDL_GetJoystickFirmwareVersion(SDL_Joystick *joystick);
# 952 "/usr/local/include/SDL3/SDL_joystick.h" 3
extern __attribute__ ((visibility("default"))) const char * SDL_GetJoystickSerial(SDL_Joystick *joystick);
# 966 "/usr/local/include/SDL3/SDL_joystick.h" 3
extern __attribute__ ((visibility("default"))) SDL_JoystickType SDL_GetJoystickType(SDL_Joystick *joystick);
# 987 "/usr/local/include/SDL3/SDL_joystick.h" 3
extern __attribute__ ((visibility("default"))) void SDL_GetJoystickGUIDInfo(SDL_GUID guid, Uint16 *vendor, Uint16 *product, Uint16 *version, Uint16 *crc16);
# 1000 "/usr/local/include/SDL3/SDL_joystick.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_JoystickConnected(SDL_Joystick *joystick);
# 1013 "/usr/local/include/SDL3/SDL_joystick.h" 3
extern __attribute__ ((visibility("default"))) SDL_JoystickID SDL_GetJoystickID(SDL_Joystick *joystick);
# 1035 "/usr/local/include/SDL3/SDL_joystick.h" 3
extern __attribute__ ((visibility("default"))) int SDL_GetNumJoystickAxes(SDL_Joystick *joystick);
# 1058 "/usr/local/include/SDL3/SDL_joystick.h" 3
extern __attribute__ ((visibility("default"))) int SDL_GetNumJoystickBalls(SDL_Joystick *joystick);
# 1076 "/usr/local/include/SDL3/SDL_joystick.h" 3
extern __attribute__ ((visibility("default"))) int SDL_GetNumJoystickHats(SDL_Joystick *joystick);
# 1094 "/usr/local/include/SDL3/SDL_joystick.h" 3
extern __attribute__ ((visibility("default"))) int SDL_GetNumJoystickButtons(SDL_Joystick *joystick);
# 1112 "/usr/local/include/SDL3/SDL_joystick.h" 3
extern __attribute__ ((visibility("default"))) void SDL_SetJoystickEventsEnabled(bool enabled);
# 1129 "/usr/local/include/SDL3/SDL_joystick.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_JoystickEventsEnabled(void);
# 1141 "/usr/local/include/SDL3/SDL_joystick.h" 3
extern __attribute__ ((visibility("default"))) void SDL_UpdateJoysticks(void);
# 1167 "/usr/local/include/SDL3/SDL_joystick.h" 3
extern __attribute__ ((visibility("default"))) Sint16 SDL_GetJoystickAxis(SDL_Joystick *joystick, int axis);
# 1185 "/usr/local/include/SDL3/SDL_joystick.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetJoystickAxisInitialState(SDL_Joystick *joystick, int axis, Sint16 *state);
# 1208 "/usr/local/include/SDL3/SDL_joystick.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetJoystickBall(SDL_Joystick *joystick, int ball, int *dx, int *dy);
# 1225 "/usr/local/include/SDL3/SDL_joystick.h" 3
extern __attribute__ ((visibility("default"))) Uint8 SDL_GetJoystickHat(SDL_Joystick *joystick, int hat);
# 1251 "/usr/local/include/SDL3/SDL_joystick.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetJoystickButton(SDL_Joystick *joystick, int button);
# 1274 "/usr/local/include/SDL3/SDL_joystick.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_RumbleJoystick(SDL_Joystick *joystick, Uint16 low_frequency_rumble, Uint16 high_frequency_rumble, Uint32 duration_ms);
# 1305 "/usr/local/include/SDL3/SDL_joystick.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_RumbleJoystickTriggers(SDL_Joystick *joystick, Uint16 left_rumble, Uint16 right_rumble, Uint32 duration_ms);
# 1327 "/usr/local/include/SDL3/SDL_joystick.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetJoystickLED(SDL_Joystick *joystick, Uint8 red, Uint8 green, Uint8 blue);
# 1342 "/usr/local/include/SDL3/SDL_joystick.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SendJoystickEffect(SDL_Joystick *joystick, const void *data, int size);
# 1355 "/usr/local/include/SDL3/SDL_joystick.h" 3
extern __attribute__ ((visibility("default"))) void SDL_CloseJoystick(SDL_Joystick *joystick);
# 1369 "/usr/local/include/SDL3/SDL_joystick.h" 3
extern __attribute__ ((visibility("default"))) SDL_JoystickConnectionState SDL_GetJoystickConnectionState(SDL_Joystick *joystick);
# 1392 "/usr/local/include/SDL3/SDL_joystick.h" 3
extern __attribute__ ((visibility("default"))) SDL_PowerState SDL_GetJoystickPowerInfo(SDL_Joystick *joystick, int *percent);



}

# 1 "/usr/local/include/SDL3/SDL_close_code.h" 1 3
# 1399 "/usr/local/include/SDL3/SDL_joystick.h" 2 3
# 85 "/usr/local/include/SDL3/SDL_gamepad.h" 2 3




# 1 "/usr/local/include/SDL3/SDL_begin_code.h" 1 3
# 90 "/usr/local/include/SDL3/SDL_gamepad.h" 2 3


extern "C" {







typedef struct SDL_Gamepad SDL_Gamepad;
# 111 "/usr/local/include/SDL3/SDL_gamepad.h" 3
typedef enum SDL_GamepadType
{
    SDL_GAMEPAD_TYPE_UNKNOWN = 0,
    SDL_GAMEPAD_TYPE_STANDARD,
    SDL_GAMEPAD_TYPE_XBOX360,
    SDL_GAMEPAD_TYPE_XBOXONE,
    SDL_GAMEPAD_TYPE_PS3,
    SDL_GAMEPAD_TYPE_PS4,
    SDL_GAMEPAD_TYPE_PS5,
    SDL_GAMEPAD_TYPE_NINTENDO_SWITCH_PRO,
    SDL_GAMEPAD_TYPE_NINTENDO_SWITCH_JOYCON_LEFT,
    SDL_GAMEPAD_TYPE_NINTENDO_SWITCH_JOYCON_RIGHT,
    SDL_GAMEPAD_TYPE_NINTENDO_SWITCH_JOYCON_PAIR,
    SDL_GAMEPAD_TYPE_GAMECUBE,
    SDL_GAMEPAD_TYPE_COUNT
} SDL_GamepadType;
# 152 "/usr/local/include/SDL3/SDL_gamepad.h" 3
typedef enum SDL_GamepadButton
{
    SDL_GAMEPAD_BUTTON_INVALID = -1,
    SDL_GAMEPAD_BUTTON_SOUTH,
    SDL_GAMEPAD_BUTTON_EAST,
    SDL_GAMEPAD_BUTTON_WEST,
    SDL_GAMEPAD_BUTTON_NORTH,
    SDL_GAMEPAD_BUTTON_BACK,
    SDL_GAMEPAD_BUTTON_GUIDE,
    SDL_GAMEPAD_BUTTON_START,
    SDL_GAMEPAD_BUTTON_LEFT_STICK,
    SDL_GAMEPAD_BUTTON_RIGHT_STICK,
    SDL_GAMEPAD_BUTTON_LEFT_SHOULDER,
    SDL_GAMEPAD_BUTTON_RIGHT_SHOULDER,
    SDL_GAMEPAD_BUTTON_DPAD_UP,
    SDL_GAMEPAD_BUTTON_DPAD_DOWN,
    SDL_GAMEPAD_BUTTON_DPAD_LEFT,
    SDL_GAMEPAD_BUTTON_DPAD_RIGHT,
    SDL_GAMEPAD_BUTTON_MISC1,
    SDL_GAMEPAD_BUTTON_RIGHT_PADDLE1,
    SDL_GAMEPAD_BUTTON_LEFT_PADDLE1,
    SDL_GAMEPAD_BUTTON_RIGHT_PADDLE2,
    SDL_GAMEPAD_BUTTON_LEFT_PADDLE2,
    SDL_GAMEPAD_BUTTON_TOUCHPAD,
    SDL_GAMEPAD_BUTTON_MISC2,
    SDL_GAMEPAD_BUTTON_MISC3,
    SDL_GAMEPAD_BUTTON_MISC4,
    SDL_GAMEPAD_BUTTON_MISC5,
    SDL_GAMEPAD_BUTTON_MISC6,
    SDL_GAMEPAD_BUTTON_COUNT
} SDL_GamepadButton;
# 195 "/usr/local/include/SDL3/SDL_gamepad.h" 3
typedef enum SDL_GamepadButtonLabel
{
    SDL_GAMEPAD_BUTTON_LABEL_UNKNOWN,
    SDL_GAMEPAD_BUTTON_LABEL_A,
    SDL_GAMEPAD_BUTTON_LABEL_B,
    SDL_GAMEPAD_BUTTON_LABEL_X,
    SDL_GAMEPAD_BUTTON_LABEL_Y,
    SDL_GAMEPAD_BUTTON_LABEL_CROSS,
    SDL_GAMEPAD_BUTTON_LABEL_CIRCLE,
    SDL_GAMEPAD_BUTTON_LABEL_SQUARE,
    SDL_GAMEPAD_BUTTON_LABEL_TRIANGLE
} SDL_GamepadButtonLabel;
# 222 "/usr/local/include/SDL3/SDL_gamepad.h" 3
typedef enum SDL_GamepadAxis
{
    SDL_GAMEPAD_AXIS_INVALID = -1,
    SDL_GAMEPAD_AXIS_LEFTX,
    SDL_GAMEPAD_AXIS_LEFTY,
    SDL_GAMEPAD_AXIS_RIGHTX,
    SDL_GAMEPAD_AXIS_RIGHTY,
    SDL_GAMEPAD_AXIS_LEFT_TRIGGER,
    SDL_GAMEPAD_AXIS_RIGHT_TRIGGER,
    SDL_GAMEPAD_AXIS_COUNT
} SDL_GamepadAxis;
# 244 "/usr/local/include/SDL3/SDL_gamepad.h" 3
typedef enum SDL_GamepadBindingType
{
    SDL_GAMEPAD_BINDTYPE_NONE = 0,
    SDL_GAMEPAD_BINDTYPE_BUTTON,
    SDL_GAMEPAD_BINDTYPE_AXIS,
    SDL_GAMEPAD_BINDTYPE_HAT
} SDL_GamepadBindingType;
# 267 "/usr/local/include/SDL3/SDL_gamepad.h" 3
typedef struct SDL_GamepadBinding
{
    SDL_GamepadBindingType input_type;
    union
    {
        int button;

        struct
        {
            int axis;
            int axis_min;
            int axis_max;
        } axis;

        struct
        {
            int hat;
            int hat_mask;
        } hat;

    } input;

    SDL_GamepadBindingType output_type;
    union
    {
        SDL_GamepadButton button;

        struct
        {
            SDL_GamepadAxis axis;
            int axis_min;
            int axis_max;
        } axis;

    } output;
} SDL_GamepadBinding;
# 346 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) int SDL_AddGamepadMapping(const char *mapping);
# 386 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) int SDL_AddGamepadMappingsFromIO(SDL_IOStream *src, bool closeio);
# 420 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) int SDL_AddGamepadMappingsFromFile(const char *file);
# 434 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_ReloadGamepadMappings(void);
# 450 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) char ** SDL_GetGamepadMappings(int *count);
# 467 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) char * SDL_GetGamepadMappingForGUID(SDL_GUID guid);
# 488 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) char * SDL_GetGamepadMapping(SDL_Gamepad *gamepad);
# 508 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetGamepadMapping(SDL_JoystickID instance_id, const char *mapping);
# 521 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_HasGamepad(void);
# 539 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) SDL_JoystickID * SDL_GetGamepads(int *count);
# 555 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_IsGamepad(SDL_JoystickID instance_id);
# 573 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) const char * SDL_GetGamepadNameForID(SDL_JoystickID instance_id);
# 591 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) const char * SDL_GetGamepadPathForID(SDL_JoystickID instance_id);
# 608 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) int SDL_GetGamepadPlayerIndexForID(SDL_JoystickID instance_id);
# 626 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) SDL_GUID SDL_GetGamepadGUIDForID(SDL_JoystickID instance_id);
# 645 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) Uint16 SDL_GetGamepadVendorForID(SDL_JoystickID instance_id);
# 664 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) Uint16 SDL_GetGamepadProductForID(SDL_JoystickID instance_id);
# 683 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) Uint16 SDL_GetGamepadProductVersionForID(SDL_JoystickID instance_id);
# 701 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) SDL_GamepadType SDL_GetGamepadTypeForID(SDL_JoystickID instance_id);
# 719 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) SDL_GamepadType SDL_GetRealGamepadTypeForID(SDL_JoystickID instance_id);
# 737 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) char * SDL_GetGamepadMappingForID(SDL_JoystickID instance_id);
# 753 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) SDL_Gamepad * SDL_OpenGamepad(SDL_JoystickID instance_id);
# 767 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) SDL_Gamepad * SDL_GetGamepadFromID(SDL_JoystickID instance_id);
# 782 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) SDL_Gamepad * SDL_GetGamepadFromPlayerIndex(int player_index);
# 811 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) SDL_PropertiesID SDL_GetGamepadProperties(SDL_Gamepad *gamepad);
# 831 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) SDL_JoystickID SDL_GetGamepadID(SDL_Gamepad *gamepad);
# 847 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) const char * SDL_GetGamepadName(SDL_Gamepad *gamepad);
# 863 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) const char * SDL_GetGamepadPath(SDL_Gamepad *gamepad);
# 878 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) SDL_GamepadType SDL_GetGamepadType(SDL_Gamepad *gamepad);
# 893 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) SDL_GamepadType SDL_GetRealGamepadType(SDL_Gamepad *gamepad);
# 909 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) int SDL_GetGamepadPlayerIndex(SDL_Gamepad *gamepad);
# 926 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetGamepadPlayerIndex(SDL_Gamepad *gamepad, int player_index);
# 942 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) Uint16 SDL_GetGamepadVendor(SDL_Gamepad *gamepad);
# 958 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) Uint16 SDL_GetGamepadProduct(SDL_Gamepad *gamepad);
# 974 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) Uint16 SDL_GetGamepadProductVersion(SDL_Gamepad *gamepad);
# 988 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) Uint16 SDL_GetGamepadFirmwareVersion(SDL_Gamepad *gamepad);
# 1002 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) const char * SDL_GetGamepadSerial(SDL_Gamepad *gamepad);
# 1017 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) Uint64 SDL_GetGamepadSteamHandle(SDL_Gamepad *gamepad);
# 1031 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) SDL_JoystickConnectionState SDL_GetGamepadConnectionState(SDL_Gamepad *gamepad);
# 1053 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) SDL_PowerState SDL_GetGamepadPowerInfo(SDL_Gamepad *gamepad, int *percent);
# 1067 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GamepadConnected(SDL_Gamepad *gamepad);
# 1089 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) SDL_Joystick * SDL_GetGamepadJoystick(SDL_Gamepad *gamepad);
# 1106 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) void SDL_SetGamepadEventsEnabled(bool enabled);
# 1122 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GamepadEventsEnabled(void);
# 1138 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) SDL_GamepadBinding ** SDL_GetGamepadBindings(SDL_Gamepad *gamepad, int *count);
# 1151 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) void SDL_UpdateGamepads(void);
# 1171 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) SDL_GamepadType SDL_GetGamepadTypeFromString(const char *str);
# 1187 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) const char * SDL_GetGamepadStringForType(SDL_GamepadType type);
# 1211 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) SDL_GamepadAxis SDL_GetGamepadAxisFromString(const char *str);
# 1227 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) const char * SDL_GetGamepadStringForAxis(SDL_GamepadAxis axis);
# 1246 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GamepadHasAxis(SDL_Gamepad *gamepad, SDL_GamepadAxis axis);
# 1274 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) Sint16 SDL_GetGamepadAxis(SDL_Gamepad *gamepad, SDL_GamepadAxis axis);
# 1294 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) SDL_GamepadButton SDL_GetGamepadButtonFromString(const char *str);
# 1310 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) const char * SDL_GetGamepadStringForButton(SDL_GamepadButton button);
# 1328 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GamepadHasButton(SDL_Gamepad *gamepad, SDL_GamepadButton button);
# 1344 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetGamepadButton(SDL_Gamepad *gamepad, SDL_GamepadButton button);
# 1359 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) SDL_GamepadButtonLabel SDL_GetGamepadButtonLabelForType(SDL_GamepadType type, SDL_GamepadButton button);
# 1374 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) SDL_GamepadButtonLabel SDL_GetGamepadButtonLabel(SDL_Gamepad *gamepad, SDL_GamepadButton button);
# 1388 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) int SDL_GetNumGamepadTouchpads(SDL_Gamepad *gamepad);
# 1405 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) int SDL_GetNumGamepadTouchpadFingers(SDL_Gamepad *gamepad, int touchpad);
# 1429 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetGamepadTouchpadFinger(SDL_Gamepad *gamepad, int touchpad, int finger, bool *down, float *x, float *y, float *pressure);
# 1446 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GamepadHasSensor(SDL_Gamepad *gamepad, SDL_SensorType type);
# 1464 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetGamepadSensorEnabled(SDL_Gamepad *gamepad, SDL_SensorType type, bool enabled);
# 1479 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GamepadSensorEnabled(SDL_Gamepad *gamepad, SDL_SensorType type);
# 1492 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) float SDL_GetGamepadSensorDataRate(SDL_Gamepad *gamepad, SDL_SensorType type);
# 1511 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetGamepadSensorData(SDL_Gamepad *gamepad, SDL_SensorType type, float *data, int num_values);
# 1535 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_RumbleGamepad(SDL_Gamepad *gamepad, Uint16 low_frequency_rumble, Uint16 high_frequency_rumble, Uint32 duration_ms);
# 1565 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_RumbleGamepadTriggers(SDL_Gamepad *gamepad, Uint16 left_rumble, Uint16 right_rumble, Uint32 duration_ms);
# 1587 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetGamepadLED(SDL_Gamepad *gamepad, Uint8 red, Uint8 green, Uint8 blue);
# 1602 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SendGamepadEffect(SDL_Gamepad *gamepad, const void *data, int size);
# 1616 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) void SDL_CloseGamepad(SDL_Gamepad *gamepad);
# 1632 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) const char * SDL_GetGamepadAppleSFSymbolsNameForButton(SDL_Gamepad *gamepad, SDL_GamepadButton button);
# 1647 "/usr/local/include/SDL3/SDL_gamepad.h" 3
extern __attribute__ ((visibility("default"))) const char * SDL_GetGamepadAppleSFSymbolsNameForAxis(SDL_Gamepad *gamepad, SDL_GamepadAxis axis);




}

# 1 "/usr/local/include/SDL3/SDL_close_code.h" 1 3
# 1655 "/usr/local/include/SDL3/SDL_gamepad.h" 2 3
# 60 "/usr/local/include/SDL3/SDL_events.h" 2 3

# 1 "/usr/local/include/SDL3/SDL_keyboard.h" 1 3
# 38 "/usr/local/include/SDL3/SDL_keyboard.h" 3
# 1 "/usr/local/include/SDL3/SDL_keycode.h" 1 3
# 37 "/usr/local/include/SDL3/SDL_keycode.h" 3
# 1 "/usr/local/include/SDL3/SDL_scancode.h" 1 3
# 52 "/usr/local/include/SDL3/SDL_scancode.h" 3
typedef enum SDL_Scancode
{
    SDL_SCANCODE_UNKNOWN = 0,
# 63 "/usr/local/include/SDL3/SDL_scancode.h" 3
    SDL_SCANCODE_A = 4,
    SDL_SCANCODE_B = 5,
    SDL_SCANCODE_C = 6,
    SDL_SCANCODE_D = 7,
    SDL_SCANCODE_E = 8,
    SDL_SCANCODE_F = 9,
    SDL_SCANCODE_G = 10,
    SDL_SCANCODE_H = 11,
    SDL_SCANCODE_I = 12,
    SDL_SCANCODE_J = 13,
    SDL_SCANCODE_K = 14,
    SDL_SCANCODE_L = 15,
    SDL_SCANCODE_M = 16,
    SDL_SCANCODE_N = 17,
    SDL_SCANCODE_O = 18,
    SDL_SCANCODE_P = 19,
    SDL_SCANCODE_Q = 20,
    SDL_SCANCODE_R = 21,
    SDL_SCANCODE_S = 22,
    SDL_SCANCODE_T = 23,
    SDL_SCANCODE_U = 24,
    SDL_SCANCODE_V = 25,
    SDL_SCANCODE_W = 26,
    SDL_SCANCODE_X = 27,
    SDL_SCANCODE_Y = 28,
    SDL_SCANCODE_Z = 29,

    SDL_SCANCODE_1 = 30,
    SDL_SCANCODE_2 = 31,
    SDL_SCANCODE_3 = 32,
    SDL_SCANCODE_4 = 33,
    SDL_SCANCODE_5 = 34,
    SDL_SCANCODE_6 = 35,
    SDL_SCANCODE_7 = 36,
    SDL_SCANCODE_8 = 37,
    SDL_SCANCODE_9 = 38,
    SDL_SCANCODE_0 = 39,

    SDL_SCANCODE_RETURN = 40,
    SDL_SCANCODE_ESCAPE = 41,
    SDL_SCANCODE_BACKSPACE = 42,
    SDL_SCANCODE_TAB = 43,
    SDL_SCANCODE_SPACE = 44,

    SDL_SCANCODE_MINUS = 45,
    SDL_SCANCODE_EQUALS = 46,
    SDL_SCANCODE_LEFTBRACKET = 47,
    SDL_SCANCODE_RIGHTBRACKET = 48,
    SDL_SCANCODE_BACKSLASH = 49,
# 125 "/usr/local/include/SDL3/SDL_scancode.h" 3
    SDL_SCANCODE_NONUSHASH = 50,
# 137 "/usr/local/include/SDL3/SDL_scancode.h" 3
    SDL_SCANCODE_SEMICOLON = 51,
    SDL_SCANCODE_APOSTROPHE = 52,
    SDL_SCANCODE_GRAVE = 53,
# 156 "/usr/local/include/SDL3/SDL_scancode.h" 3
    SDL_SCANCODE_COMMA = 54,
    SDL_SCANCODE_PERIOD = 55,
    SDL_SCANCODE_SLASH = 56,

    SDL_SCANCODE_CAPSLOCK = 57,

    SDL_SCANCODE_F1 = 58,
    SDL_SCANCODE_F2 = 59,
    SDL_SCANCODE_F3 = 60,
    SDL_SCANCODE_F4 = 61,
    SDL_SCANCODE_F5 = 62,
    SDL_SCANCODE_F6 = 63,
    SDL_SCANCODE_F7 = 64,
    SDL_SCANCODE_F8 = 65,
    SDL_SCANCODE_F9 = 66,
    SDL_SCANCODE_F10 = 67,
    SDL_SCANCODE_F11 = 68,
    SDL_SCANCODE_F12 = 69,

    SDL_SCANCODE_PRINTSCREEN = 70,
    SDL_SCANCODE_SCROLLLOCK = 71,
    SDL_SCANCODE_PAUSE = 72,
    SDL_SCANCODE_INSERT = 73,

    SDL_SCANCODE_HOME = 74,
    SDL_SCANCODE_PAGEUP = 75,
    SDL_SCANCODE_DELETE = 76,
    SDL_SCANCODE_END = 77,
    SDL_SCANCODE_PAGEDOWN = 78,
    SDL_SCANCODE_RIGHT = 79,
    SDL_SCANCODE_LEFT = 80,
    SDL_SCANCODE_DOWN = 81,
    SDL_SCANCODE_UP = 82,

    SDL_SCANCODE_NUMLOCKCLEAR = 83,

    SDL_SCANCODE_KP_DIVIDE = 84,
    SDL_SCANCODE_KP_MULTIPLY = 85,
    SDL_SCANCODE_KP_MINUS = 86,
    SDL_SCANCODE_KP_PLUS = 87,
    SDL_SCANCODE_KP_ENTER = 88,
    SDL_SCANCODE_KP_1 = 89,
    SDL_SCANCODE_KP_2 = 90,
    SDL_SCANCODE_KP_3 = 91,
    SDL_SCANCODE_KP_4 = 92,
    SDL_SCANCODE_KP_5 = 93,
    SDL_SCANCODE_KP_6 = 94,
    SDL_SCANCODE_KP_7 = 95,
    SDL_SCANCODE_KP_8 = 96,
    SDL_SCANCODE_KP_9 = 97,
    SDL_SCANCODE_KP_0 = 98,
    SDL_SCANCODE_KP_PERIOD = 99,

    SDL_SCANCODE_NONUSBACKSLASH = 100,
# 219 "/usr/local/include/SDL3/SDL_scancode.h" 3
    SDL_SCANCODE_APPLICATION = 101,
    SDL_SCANCODE_POWER = 102,


    SDL_SCANCODE_KP_EQUALS = 103,
    SDL_SCANCODE_F13 = 104,
    SDL_SCANCODE_F14 = 105,
    SDL_SCANCODE_F15 = 106,
    SDL_SCANCODE_F16 = 107,
    SDL_SCANCODE_F17 = 108,
    SDL_SCANCODE_F18 = 109,
    SDL_SCANCODE_F19 = 110,
    SDL_SCANCODE_F20 = 111,
    SDL_SCANCODE_F21 = 112,
    SDL_SCANCODE_F22 = 113,
    SDL_SCANCODE_F23 = 114,
    SDL_SCANCODE_F24 = 115,
    SDL_SCANCODE_EXECUTE = 116,
    SDL_SCANCODE_HELP = 117,
    SDL_SCANCODE_MENU = 118,
    SDL_SCANCODE_SELECT = 119,
    SDL_SCANCODE_STOP = 120,
    SDL_SCANCODE_AGAIN = 121,
    SDL_SCANCODE_UNDO = 122,
    SDL_SCANCODE_CUT = 123,
    SDL_SCANCODE_COPY = 124,
    SDL_SCANCODE_PASTE = 125,
    SDL_SCANCODE_FIND = 126,
    SDL_SCANCODE_MUTE = 127,
    SDL_SCANCODE_VOLUMEUP = 128,
    SDL_SCANCODE_VOLUMEDOWN = 129,




    SDL_SCANCODE_KP_COMMA = 133,
    SDL_SCANCODE_KP_EQUALSAS400 = 134,

    SDL_SCANCODE_INTERNATIONAL1 = 135,

    SDL_SCANCODE_INTERNATIONAL2 = 136,
    SDL_SCANCODE_INTERNATIONAL3 = 137,
    SDL_SCANCODE_INTERNATIONAL4 = 138,
    SDL_SCANCODE_INTERNATIONAL5 = 139,
    SDL_SCANCODE_INTERNATIONAL6 = 140,
    SDL_SCANCODE_INTERNATIONAL7 = 141,
    SDL_SCANCODE_INTERNATIONAL8 = 142,
    SDL_SCANCODE_INTERNATIONAL9 = 143,
    SDL_SCANCODE_LANG1 = 144,
    SDL_SCANCODE_LANG2 = 145,
    SDL_SCANCODE_LANG3 = 146,
    SDL_SCANCODE_LANG4 = 147,
    SDL_SCANCODE_LANG5 = 148,
    SDL_SCANCODE_LANG6 = 149,
    SDL_SCANCODE_LANG7 = 150,
    SDL_SCANCODE_LANG8 = 151,
    SDL_SCANCODE_LANG9 = 152,

    SDL_SCANCODE_ALTERASE = 153,
    SDL_SCANCODE_SYSREQ = 154,
    SDL_SCANCODE_CANCEL = 155,
    SDL_SCANCODE_CLEAR = 156,
    SDL_SCANCODE_PRIOR = 157,
    SDL_SCANCODE_RETURN2 = 158,
    SDL_SCANCODE_SEPARATOR = 159,
    SDL_SCANCODE_OUT = 160,
    SDL_SCANCODE_OPER = 161,
    SDL_SCANCODE_CLEARAGAIN = 162,
    SDL_SCANCODE_CRSEL = 163,
    SDL_SCANCODE_EXSEL = 164,

    SDL_SCANCODE_KP_00 = 176,
    SDL_SCANCODE_KP_000 = 177,
    SDL_SCANCODE_THOUSANDSSEPARATOR = 178,
    SDL_SCANCODE_DECIMALSEPARATOR = 179,
    SDL_SCANCODE_CURRENCYUNIT = 180,
    SDL_SCANCODE_CURRENCYSUBUNIT = 181,
    SDL_SCANCODE_KP_LEFTPAREN = 182,
    SDL_SCANCODE_KP_RIGHTPAREN = 183,
    SDL_SCANCODE_KP_LEFTBRACE = 184,
    SDL_SCANCODE_KP_RIGHTBRACE = 185,
    SDL_SCANCODE_KP_TAB = 186,
    SDL_SCANCODE_KP_BACKSPACE = 187,
    SDL_SCANCODE_KP_A = 188,
    SDL_SCANCODE_KP_B = 189,
    SDL_SCANCODE_KP_C = 190,
    SDL_SCANCODE_KP_D = 191,
    SDL_SCANCODE_KP_E = 192,
    SDL_SCANCODE_KP_F = 193,
    SDL_SCANCODE_KP_XOR = 194,
    SDL_SCANCODE_KP_POWER = 195,
    SDL_SCANCODE_KP_PERCENT = 196,
    SDL_SCANCODE_KP_LESS = 197,
    SDL_SCANCODE_KP_GREATER = 198,
    SDL_SCANCODE_KP_AMPERSAND = 199,
    SDL_SCANCODE_KP_DBLAMPERSAND = 200,
    SDL_SCANCODE_KP_VERTICALBAR = 201,
    SDL_SCANCODE_KP_DBLVERTICALBAR = 202,
    SDL_SCANCODE_KP_COLON = 203,
    SDL_SCANCODE_KP_HASH = 204,
    SDL_SCANCODE_KP_SPACE = 205,
    SDL_SCANCODE_KP_AT = 206,
    SDL_SCANCODE_KP_EXCLAM = 207,
    SDL_SCANCODE_KP_MEMSTORE = 208,
    SDL_SCANCODE_KP_MEMRECALL = 209,
    SDL_SCANCODE_KP_MEMCLEAR = 210,
    SDL_SCANCODE_KP_MEMADD = 211,
    SDL_SCANCODE_KP_MEMSUBTRACT = 212,
    SDL_SCANCODE_KP_MEMMULTIPLY = 213,
    SDL_SCANCODE_KP_MEMDIVIDE = 214,
    SDL_SCANCODE_KP_PLUSMINUS = 215,
    SDL_SCANCODE_KP_CLEAR = 216,
    SDL_SCANCODE_KP_CLEARENTRY = 217,
    SDL_SCANCODE_KP_BINARY = 218,
    SDL_SCANCODE_KP_OCTAL = 219,
    SDL_SCANCODE_KP_DECIMAL = 220,
    SDL_SCANCODE_KP_HEXADECIMAL = 221,

    SDL_SCANCODE_LCTRL = 224,
    SDL_SCANCODE_LSHIFT = 225,
    SDL_SCANCODE_LALT = 226,
    SDL_SCANCODE_LGUI = 227,
    SDL_SCANCODE_RCTRL = 228,
    SDL_SCANCODE_RSHIFT = 229,
    SDL_SCANCODE_RALT = 230,
    SDL_SCANCODE_RGUI = 231,

    SDL_SCANCODE_MODE = 257,
# 364 "/usr/local/include/SDL3/SDL_scancode.h" 3
    SDL_SCANCODE_SLEEP = 258,
    SDL_SCANCODE_WAKE = 259,

    SDL_SCANCODE_CHANNEL_INCREMENT = 260,
    SDL_SCANCODE_CHANNEL_DECREMENT = 261,

    SDL_SCANCODE_MEDIA_PLAY = 262,
    SDL_SCANCODE_MEDIA_PAUSE = 263,
    SDL_SCANCODE_MEDIA_RECORD = 264,
    SDL_SCANCODE_MEDIA_FAST_FORWARD = 265,
    SDL_SCANCODE_MEDIA_REWIND = 266,
    SDL_SCANCODE_MEDIA_NEXT_TRACK = 267,
    SDL_SCANCODE_MEDIA_PREVIOUS_TRACK = 268,
    SDL_SCANCODE_MEDIA_STOP = 269,
    SDL_SCANCODE_MEDIA_EJECT = 270,
    SDL_SCANCODE_MEDIA_PLAY_PAUSE = 271,
    SDL_SCANCODE_MEDIA_SELECT = 272,

    SDL_SCANCODE_AC_NEW = 273,
    SDL_SCANCODE_AC_OPEN = 274,
    SDL_SCANCODE_AC_CLOSE = 275,
    SDL_SCANCODE_AC_EXIT = 276,
    SDL_SCANCODE_AC_SAVE = 277,
    SDL_SCANCODE_AC_PRINT = 278,
    SDL_SCANCODE_AC_PROPERTIES = 279,

    SDL_SCANCODE_AC_SEARCH = 280,
    SDL_SCANCODE_AC_HOME = 281,
    SDL_SCANCODE_AC_BACK = 282,
    SDL_SCANCODE_AC_FORWARD = 283,
    SDL_SCANCODE_AC_STOP = 284,
    SDL_SCANCODE_AC_REFRESH = 285,
    SDL_SCANCODE_AC_BOOKMARKS = 286,
# 408 "/usr/local/include/SDL3/SDL_scancode.h" 3
    SDL_SCANCODE_SOFTLEFT = 287,



    SDL_SCANCODE_SOFTRIGHT = 288,



    SDL_SCANCODE_CALL = 289,
    SDL_SCANCODE_ENDCALL = 290,





    SDL_SCANCODE_RESERVED = 400,

    SDL_SCANCODE_COUNT = 512

} SDL_Scancode;
# 38 "/usr/local/include/SDL3/SDL_keycode.h" 2 3
# 59 "/usr/local/include/SDL3/SDL_keycode.h" 3
typedef Uint32 SDL_Keycode;
# 326 "/usr/local/include/SDL3/SDL_keycode.h" 3
typedef Uint16 SDL_Keymod;
# 39 "/usr/local/include/SDL3/SDL_keyboard.h" 2 3





# 1 "/usr/local/include/SDL3/SDL_begin_code.h" 1 3
# 45 "/usr/local/include/SDL3/SDL_keyboard.h" 2 3


extern "C" {
# 60 "/usr/local/include/SDL3/SDL_keyboard.h" 3
typedef Uint32 SDL_KeyboardID;
# 75 "/usr/local/include/SDL3/SDL_keyboard.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_HasKeyboard(void);
# 98 "/usr/local/include/SDL3/SDL_keyboard.h" 3
extern __attribute__ ((visibility("default"))) SDL_KeyboardID * SDL_GetKeyboards(int *count);
# 115 "/usr/local/include/SDL3/SDL_keyboard.h" 3
extern __attribute__ ((visibility("default"))) const char * SDL_GetKeyboardNameForID(SDL_KeyboardID instance_id);
# 126 "/usr/local/include/SDL3/SDL_keyboard.h" 3
extern __attribute__ ((visibility("default"))) SDL_Window * SDL_GetKeyboardFocus(void);
# 159 "/usr/local/include/SDL3/SDL_keyboard.h" 3
extern __attribute__ ((visibility("default"))) const bool * SDL_GetKeyboardState(int *numkeys);
# 172 "/usr/local/include/SDL3/SDL_keyboard.h" 3
extern __attribute__ ((visibility("default"))) void SDL_ResetKeyboard(void);
# 186 "/usr/local/include/SDL3/SDL_keyboard.h" 3
extern __attribute__ ((visibility("default"))) SDL_Keymod SDL_GetModState(void);
# 207 "/usr/local/include/SDL3/SDL_keyboard.h" 3
extern __attribute__ ((visibility("default"))) void SDL_SetModState(SDL_Keymod modstate);
# 231 "/usr/local/include/SDL3/SDL_keyboard.h" 3
extern __attribute__ ((visibility("default"))) SDL_Keycode SDL_GetKeyFromScancode(SDL_Scancode scancode, SDL_Keymod modstate, bool key_event);
# 252 "/usr/local/include/SDL3/SDL_keyboard.h" 3
extern __attribute__ ((visibility("default"))) SDL_Scancode SDL_GetScancodeFromKey(SDL_Keycode key, SDL_Keymod *modstate);
# 270 "/usr/local/include/SDL3/SDL_keyboard.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetScancodeName(SDL_Scancode scancode, const char *name);
# 296 "/usr/local/include/SDL3/SDL_keyboard.h" 3
extern __attribute__ ((visibility("default"))) const char * SDL_GetScancodeName(SDL_Scancode scancode);
# 313 "/usr/local/include/SDL3/SDL_keyboard.h" 3
extern __attribute__ ((visibility("default"))) SDL_Scancode SDL_GetScancodeFromName(const char *name);
# 333 "/usr/local/include/SDL3/SDL_keyboard.h" 3
extern __attribute__ ((visibility("default"))) const char * SDL_GetKeyName(SDL_Keycode key);
# 350 "/usr/local/include/SDL3/SDL_keyboard.h" 3
extern __attribute__ ((visibility("default"))) SDL_Keycode SDL_GetKeyFromName(const char *name);
# 378 "/usr/local/include/SDL3/SDL_keyboard.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_StartTextInput(SDL_Window *window);
# 391 "/usr/local/include/SDL3/SDL_keyboard.h" 3
typedef enum SDL_TextInputType
{
    SDL_TEXTINPUT_TYPE_TEXT,
    SDL_TEXTINPUT_TYPE_TEXT_NAME,
    SDL_TEXTINPUT_TYPE_TEXT_EMAIL,
    SDL_TEXTINPUT_TYPE_TEXT_USERNAME,
    SDL_TEXTINPUT_TYPE_TEXT_PASSWORD_HIDDEN,
    SDL_TEXTINPUT_TYPE_TEXT_PASSWORD_VISIBLE,
    SDL_TEXTINPUT_TYPE_NUMBER,
    SDL_TEXTINPUT_TYPE_NUMBER_PASSWORD_HIDDEN,
    SDL_TEXTINPUT_TYPE_NUMBER_PASSWORD_VISIBLE
} SDL_TextInputType;
# 415 "/usr/local/include/SDL3/SDL_keyboard.h" 3
typedef enum SDL_Capitalization
{
    SDL_CAPITALIZE_NONE,
    SDL_CAPITALIZE_SENTENCES,
    SDL_CAPITALIZE_WORDS,
    SDL_CAPITALIZE_LETTERS
} SDL_Capitalization;
# 473 "/usr/local/include/SDL3/SDL_keyboard.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_StartTextInputWithProperties(SDL_Window *window, SDL_PropertiesID props);
# 493 "/usr/local/include/SDL3/SDL_keyboard.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_TextInputActive(SDL_Window *window);
# 511 "/usr/local/include/SDL3/SDL_keyboard.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_StopTextInput(SDL_Window *window);
# 527 "/usr/local/include/SDL3/SDL_keyboard.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_ClearComposition(SDL_Window *window);
# 550 "/usr/local/include/SDL3/SDL_keyboard.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetTextInputArea(SDL_Window *window, const SDL_Rect *rect, int cursor);
# 571 "/usr/local/include/SDL3/SDL_keyboard.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetTextInputArea(SDL_Window *window, SDL_Rect *rect, int *cursor);
# 586 "/usr/local/include/SDL3/SDL_keyboard.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_HasScreenKeyboardSupport(void);
# 600 "/usr/local/include/SDL3/SDL_keyboard.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_ScreenKeyboardShown(SDL_Window *window);



}

# 1 "/usr/local/include/SDL3/SDL_close_code.h" 1 3
# 607 "/usr/local/include/SDL3/SDL_keyboard.h" 2 3
# 62 "/usr/local/include/SDL3/SDL_events.h" 2 3

# 1 "/usr/local/include/SDL3/SDL_mouse.h" 1 3
# 65 "/usr/local/include/SDL3/SDL_mouse.h" 3
# 1 "/usr/local/include/SDL3/SDL_begin_code.h" 1 3
# 66 "/usr/local/include/SDL3/SDL_mouse.h" 2 3


extern "C" {
# 81 "/usr/local/include/SDL3/SDL_mouse.h" 3
typedef Uint32 SDL_MouseID;
# 90 "/usr/local/include/SDL3/SDL_mouse.h" 3
typedef struct SDL_Cursor SDL_Cursor;






typedef enum SDL_SystemCursor
{
    SDL_SYSTEM_CURSOR_DEFAULT,
    SDL_SYSTEM_CURSOR_TEXT,
    SDL_SYSTEM_CURSOR_WAIT,
    SDL_SYSTEM_CURSOR_CROSSHAIR,
    SDL_SYSTEM_CURSOR_PROGRESS,
    SDL_SYSTEM_CURSOR_NWSE_RESIZE,
    SDL_SYSTEM_CURSOR_NESW_RESIZE,
    SDL_SYSTEM_CURSOR_EW_RESIZE,
    SDL_SYSTEM_CURSOR_NS_RESIZE,
    SDL_SYSTEM_CURSOR_MOVE,
    SDL_SYSTEM_CURSOR_NOT_ALLOWED,
    SDL_SYSTEM_CURSOR_POINTER,
    SDL_SYSTEM_CURSOR_NW_RESIZE,
    SDL_SYSTEM_CURSOR_N_RESIZE,
    SDL_SYSTEM_CURSOR_NE_RESIZE,
    SDL_SYSTEM_CURSOR_E_RESIZE,
    SDL_SYSTEM_CURSOR_SE_RESIZE,
    SDL_SYSTEM_CURSOR_S_RESIZE,
    SDL_SYSTEM_CURSOR_SW_RESIZE,
    SDL_SYSTEM_CURSOR_W_RESIZE,
    SDL_SYSTEM_CURSOR_COUNT
} SDL_SystemCursor;






typedef enum SDL_MouseWheelDirection
{
    SDL_MOUSEWHEEL_NORMAL,
    SDL_MOUSEWHEEL_FLIPPED
} SDL_MouseWheelDirection;






typedef struct SDL_CursorFrameInfo
{
    SDL_Surface *surface;
    Uint32 duration;
} SDL_CursorFrameInfo;
# 159 "/usr/local/include/SDL3/SDL_mouse.h" 3
typedef Uint32 SDL_MouseButtonFlags;
# 205 "/usr/local/include/SDL3/SDL_mouse.h" 3
typedef void ( *SDL_MouseMotionTransformCallback)(
    void *userdata,
    Uint64 timestamp,
    SDL_Window *window,
    SDL_MouseID mouseID,
    float *x, float *y
);
# 226 "/usr/local/include/SDL3/SDL_mouse.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_HasMouse(void);
# 249 "/usr/local/include/SDL3/SDL_mouse.h" 3
extern __attribute__ ((visibility("default"))) SDL_MouseID * SDL_GetMice(int *count);
# 266 "/usr/local/include/SDL3/SDL_mouse.h" 3
extern __attribute__ ((visibility("default"))) const char * SDL_GetMouseNameForID(SDL_MouseID instance_id);
# 277 "/usr/local/include/SDL3/SDL_mouse.h" 3
extern __attribute__ ((visibility("default"))) SDL_Window * SDL_GetMouseFocus(void);
# 310 "/usr/local/include/SDL3/SDL_mouse.h" 3
extern __attribute__ ((visibility("default"))) SDL_MouseButtonFlags SDL_GetMouseState(float *x, float *y);
# 347 "/usr/local/include/SDL3/SDL_mouse.h" 3
extern __attribute__ ((visibility("default"))) SDL_MouseButtonFlags SDL_GetGlobalMouseState(float *x, float *y);
# 382 "/usr/local/include/SDL3/SDL_mouse.h" 3
extern __attribute__ ((visibility("default"))) SDL_MouseButtonFlags SDL_GetRelativeMouseState(float *x, float *y);
# 405 "/usr/local/include/SDL3/SDL_mouse.h" 3
extern __attribute__ ((visibility("default"))) void SDL_WarpMouseInWindow(SDL_Window *window,
                                                   float x, float y);
# 430 "/usr/local/include/SDL3/SDL_mouse.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_WarpMouseGlobal(float x, float y);
# 448 "/usr/local/include/SDL3/SDL_mouse.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetRelativeMouseTransform(SDL_MouseMotionTransformCallback callback, void *userdata);
# 476 "/usr/local/include/SDL3/SDL_mouse.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetWindowRelativeMouseMode(SDL_Window *window, bool enabled);
# 490 "/usr/local/include/SDL3/SDL_mouse.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetWindowRelativeMouseMode(SDL_Window *window);
# 538 "/usr/local/include/SDL3/SDL_mouse.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_CaptureMouse(bool enabled);
# 585 "/usr/local/include/SDL3/SDL_mouse.h" 3
extern __attribute__ ((visibility("default"))) SDL_Cursor * SDL_CreateCursor(const Uint8 *data,
                                                     const Uint8 *mask,
                                                     int w, int h, int hot_x,
                                                     int hot_y);
# 622 "/usr/local/include/SDL3/SDL_mouse.h" 3
extern __attribute__ ((visibility("default"))) SDL_Cursor * SDL_CreateColorCursor(SDL_Surface *surface,
                                                          int hot_x,
                                                          int hot_y);
# 672 "/usr/local/include/SDL3/SDL_mouse.h" 3
extern __attribute__ ((visibility("default"))) SDL_Cursor * SDL_CreateAnimatedCursor(SDL_CursorFrameInfo *frames,
                                                                 int frame_count,
                                                                 int hot_x,
                                                                 int hot_y);
# 690 "/usr/local/include/SDL3/SDL_mouse.h" 3
extern __attribute__ ((visibility("default"))) SDL_Cursor * SDL_CreateSystemCursor(SDL_SystemCursor id);
# 710 "/usr/local/include/SDL3/SDL_mouse.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetCursor(SDL_Cursor *cursor);
# 726 "/usr/local/include/SDL3/SDL_mouse.h" 3
extern __attribute__ ((visibility("default"))) SDL_Cursor * SDL_GetCursor(void);
# 741 "/usr/local/include/SDL3/SDL_mouse.h" 3
extern __attribute__ ((visibility("default"))) SDL_Cursor * SDL_GetDefaultCursor(void);
# 760 "/usr/local/include/SDL3/SDL_mouse.h" 3
extern __attribute__ ((visibility("default"))) void SDL_DestroyCursor(SDL_Cursor *cursor);
# 775 "/usr/local/include/SDL3/SDL_mouse.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_ShowCursor(void);
# 790 "/usr/local/include/SDL3/SDL_mouse.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_HideCursor(void);
# 805 "/usr/local/include/SDL3/SDL_mouse.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_CursorVisible(void);



}

# 1 "/usr/local/include/SDL3/SDL_close_code.h" 1 3
# 812 "/usr/local/include/SDL3/SDL_mouse.h" 2 3
# 64 "/usr/local/include/SDL3/SDL_events.h" 2 3
# 1 "/usr/local/include/SDL3/SDL_pen.h" 1 3
# 69 "/usr/local/include/SDL3/SDL_pen.h" 3
# 1 "/usr/local/include/SDL3/SDL_touch.h" 1 3
# 46 "/usr/local/include/SDL3/SDL_touch.h" 3
# 1 "/usr/local/include/SDL3/SDL_begin_code.h" 1 3
# 47 "/usr/local/include/SDL3/SDL_touch.h" 2 3


extern "C" {
# 62 "/usr/local/include/SDL3/SDL_touch.h" 3
typedef Uint64 SDL_TouchID;
# 76 "/usr/local/include/SDL3/SDL_touch.h" 3
typedef Uint64 SDL_FingerID;






typedef enum SDL_TouchDeviceType
{
    SDL_TOUCH_DEVICE_INVALID = -1,
    SDL_TOUCH_DEVICE_DIRECT,
    SDL_TOUCH_DEVICE_INDIRECT_ABSOLUTE,
    SDL_TOUCH_DEVICE_INDIRECT_RELATIVE
} SDL_TouchDeviceType;
# 102 "/usr/local/include/SDL3/SDL_touch.h" 3
typedef struct SDL_Finger
{
    SDL_FingerID id;
    float x;
    float y;
    float pressure;
} SDL_Finger;
# 140 "/usr/local/include/SDL3/SDL_touch.h" 3
extern __attribute__ ((visibility("default"))) SDL_TouchID * SDL_GetTouchDevices(int *count);
# 151 "/usr/local/include/SDL3/SDL_touch.h" 3
extern __attribute__ ((visibility("default"))) const char * SDL_GetTouchDeviceName(SDL_TouchID touchID);
# 161 "/usr/local/include/SDL3/SDL_touch.h" 3
extern __attribute__ ((visibility("default"))) SDL_TouchDeviceType SDL_GetTouchDeviceType(SDL_TouchID touchID);
# 176 "/usr/local/include/SDL3/SDL_touch.h" 3
extern __attribute__ ((visibility("default"))) SDL_Finger ** SDL_GetTouchFingers(SDL_TouchID touchID, int *count);



}

# 1 "/usr/local/include/SDL3/SDL_close_code.h" 1 3
# 183 "/usr/local/include/SDL3/SDL_touch.h" 2 3
# 70 "/usr/local/include/SDL3/SDL_pen.h" 2 3

# 1 "/usr/local/include/SDL3/SDL_begin_code.h" 1 3
# 72 "/usr/local/include/SDL3/SDL_pen.h" 2 3


extern "C" {
# 93 "/usr/local/include/SDL3/SDL_pen.h" 3
typedef Uint32 SDL_PenID;
# 114 "/usr/local/include/SDL3/SDL_pen.h" 3
typedef Uint32 SDL_PenInputFlags;
# 140 "/usr/local/include/SDL3/SDL_pen.h" 3
typedef enum SDL_PenAxis
{
    SDL_PEN_AXIS_PRESSURE,
    SDL_PEN_AXIS_XTILT,
    SDL_PEN_AXIS_YTILT,
    SDL_PEN_AXIS_DISTANCE,
    SDL_PEN_AXIS_ROTATION,
    SDL_PEN_AXIS_SLIDER,
    SDL_PEN_AXIS_TANGENTIAL_PRESSURE,
    SDL_PEN_AXIS_COUNT
} SDL_PenAxis;
# 167 "/usr/local/include/SDL3/SDL_pen.h" 3
typedef enum SDL_PenDeviceType
{
    SDL_PEN_DEVICE_TYPE_INVALID = -1,
    SDL_PEN_DEVICE_TYPE_UNKNOWN,
    SDL_PEN_DEVICE_TYPE_DIRECT,
    SDL_PEN_DEVICE_TYPE_INDIRECT
} SDL_PenDeviceType;
# 189 "/usr/local/include/SDL3/SDL_pen.h" 3
extern __attribute__ ((visibility("default"))) SDL_PenDeviceType SDL_GetPenDeviceType(SDL_PenID instance_id);



}

# 1 "/usr/local/include/SDL3/SDL_close_code.h" 1 3
# 196 "/usr/local/include/SDL3/SDL_pen.h" 2 3
# 65 "/usr/local/include/SDL3/SDL_events.h" 2 3






# 1 "/usr/local/include/SDL3/SDL_begin_code.h" 1 3
# 72 "/usr/local/include/SDL3/SDL_events.h" 2 3


extern "C" {
# 84 "/usr/local/include/SDL3/SDL_events.h" 3
typedef enum SDL_EventType
{
    SDL_EVENT_FIRST = 0,


    SDL_EVENT_QUIT = 0x100,


    SDL_EVENT_TERMINATING,



    SDL_EVENT_LOW_MEMORY,



    SDL_EVENT_WILL_ENTER_BACKGROUND,



    SDL_EVENT_DID_ENTER_BACKGROUND,



    SDL_EVENT_WILL_ENTER_FOREGROUND,



    SDL_EVENT_DID_ENTER_FOREGROUND,




    SDL_EVENT_LOCALE_CHANGED,

    SDL_EVENT_SYSTEM_THEME_CHANGED,



    SDL_EVENT_DISPLAY_ORIENTATION = 0x151,
    SDL_EVENT_DISPLAY_ADDED,
    SDL_EVENT_DISPLAY_REMOVED,
    SDL_EVENT_DISPLAY_MOVED,
    SDL_EVENT_DISPLAY_DESKTOP_MODE_CHANGED,
    SDL_EVENT_DISPLAY_CURRENT_MODE_CHANGED,
    SDL_EVENT_DISPLAY_CONTENT_SCALE_CHANGED,
    SDL_EVENT_DISPLAY_USABLE_BOUNDS_CHANGED,
    SDL_EVENT_DISPLAY_FIRST = SDL_EVENT_DISPLAY_ORIENTATION,
    SDL_EVENT_DISPLAY_LAST = SDL_EVENT_DISPLAY_USABLE_BOUNDS_CHANGED,




    SDL_EVENT_WINDOW_SHOWN = 0x202,
    SDL_EVENT_WINDOW_HIDDEN,
    SDL_EVENT_WINDOW_EXPOSED,

    SDL_EVENT_WINDOW_MOVED,
    SDL_EVENT_WINDOW_RESIZED,
    SDL_EVENT_WINDOW_PIXEL_SIZE_CHANGED,
    SDL_EVENT_WINDOW_METAL_VIEW_RESIZED,
    SDL_EVENT_WINDOW_MINIMIZED,
    SDL_EVENT_WINDOW_MAXIMIZED,
    SDL_EVENT_WINDOW_RESTORED,
    SDL_EVENT_WINDOW_MOUSE_ENTER,
    SDL_EVENT_WINDOW_MOUSE_LEAVE,
    SDL_EVENT_WINDOW_FOCUS_GAINED,
    SDL_EVENT_WINDOW_FOCUS_LOST,
    SDL_EVENT_WINDOW_CLOSE_REQUESTED,
    SDL_EVENT_WINDOW_HIT_TEST,
    SDL_EVENT_WINDOW_ICCPROF_CHANGED,
    SDL_EVENT_WINDOW_DISPLAY_CHANGED,
    SDL_EVENT_WINDOW_DISPLAY_SCALE_CHANGED,
    SDL_EVENT_WINDOW_SAFE_AREA_CHANGED,
    SDL_EVENT_WINDOW_OCCLUDED,
    SDL_EVENT_WINDOW_ENTER_FULLSCREEN,
    SDL_EVENT_WINDOW_LEAVE_FULLSCREEN,
    SDL_EVENT_WINDOW_DESTROYED,



    SDL_EVENT_WINDOW_HDR_STATE_CHANGED,
    SDL_EVENT_WINDOW_FIRST = SDL_EVENT_WINDOW_SHOWN,
    SDL_EVENT_WINDOW_LAST = SDL_EVENT_WINDOW_HDR_STATE_CHANGED,


    SDL_EVENT_KEY_DOWN = 0x300,
    SDL_EVENT_KEY_UP,
    SDL_EVENT_TEXT_EDITING,
    SDL_EVENT_TEXT_INPUT,
    SDL_EVENT_KEYMAP_CHANGED,

    SDL_EVENT_KEYBOARD_ADDED,
    SDL_EVENT_KEYBOARD_REMOVED,
    SDL_EVENT_TEXT_EDITING_CANDIDATES,
    SDL_EVENT_SCREEN_KEYBOARD_SHOWN,
    SDL_EVENT_SCREEN_KEYBOARD_HIDDEN,


    SDL_EVENT_MOUSE_MOTION = 0x400,
    SDL_EVENT_MOUSE_BUTTON_DOWN,
    SDL_EVENT_MOUSE_BUTTON_UP,
    SDL_EVENT_MOUSE_WHEEL,
    SDL_EVENT_MOUSE_ADDED,
    SDL_EVENT_MOUSE_REMOVED,


    SDL_EVENT_JOYSTICK_AXIS_MOTION = 0x600,
    SDL_EVENT_JOYSTICK_BALL_MOTION,
    SDL_EVENT_JOYSTICK_HAT_MOTION,
    SDL_EVENT_JOYSTICK_BUTTON_DOWN,
    SDL_EVENT_JOYSTICK_BUTTON_UP,
    SDL_EVENT_JOYSTICK_ADDED,
    SDL_EVENT_JOYSTICK_REMOVED,
    SDL_EVENT_JOYSTICK_BATTERY_UPDATED,
    SDL_EVENT_JOYSTICK_UPDATE_COMPLETE,


    SDL_EVENT_GAMEPAD_AXIS_MOTION = 0x650,
    SDL_EVENT_GAMEPAD_BUTTON_DOWN,
    SDL_EVENT_GAMEPAD_BUTTON_UP,
    SDL_EVENT_GAMEPAD_ADDED,
    SDL_EVENT_GAMEPAD_REMOVED,
    SDL_EVENT_GAMEPAD_REMAPPED,
    SDL_EVENT_GAMEPAD_TOUCHPAD_DOWN,
    SDL_EVENT_GAMEPAD_TOUCHPAD_MOTION,
    SDL_EVENT_GAMEPAD_TOUCHPAD_UP,
    SDL_EVENT_GAMEPAD_SENSOR_UPDATE,
    SDL_EVENT_GAMEPAD_UPDATE_COMPLETE,
    SDL_EVENT_GAMEPAD_STEAM_HANDLE_UPDATED,


    SDL_EVENT_FINGER_DOWN = 0x700,
    SDL_EVENT_FINGER_UP,
    SDL_EVENT_FINGER_MOTION,
    SDL_EVENT_FINGER_CANCELED,


    SDL_EVENT_PINCH_BEGIN = 0x710,
    SDL_EVENT_PINCH_UPDATE,
    SDL_EVENT_PINCH_END,




    SDL_EVENT_CLIPBOARD_UPDATE = 0x900,


    SDL_EVENT_DROP_FILE = 0x1000,
    SDL_EVENT_DROP_TEXT,
    SDL_EVENT_DROP_BEGIN,
    SDL_EVENT_DROP_COMPLETE,
    SDL_EVENT_DROP_POSITION,


    SDL_EVENT_AUDIO_DEVICE_ADDED = 0x1100,
    SDL_EVENT_AUDIO_DEVICE_REMOVED,
    SDL_EVENT_AUDIO_DEVICE_FORMAT_CHANGED,


    SDL_EVENT_SENSOR_UPDATE = 0x1200,


    SDL_EVENT_PEN_PROXIMITY_IN = 0x1300,
    SDL_EVENT_PEN_PROXIMITY_OUT,
    SDL_EVENT_PEN_DOWN,
    SDL_EVENT_PEN_UP,
    SDL_EVENT_PEN_BUTTON_DOWN,
    SDL_EVENT_PEN_BUTTON_UP,
    SDL_EVENT_PEN_MOTION,
    SDL_EVENT_PEN_AXIS,


    SDL_EVENT_CAMERA_DEVICE_ADDED = 0x1400,
    SDL_EVENT_CAMERA_DEVICE_REMOVED,
    SDL_EVENT_CAMERA_DEVICE_APPROVED,
    SDL_EVENT_CAMERA_DEVICE_DENIED,


    SDL_EVENT_RENDER_TARGETS_RESET = 0x2000,
    SDL_EVENT_RENDER_DEVICE_RESET,
    SDL_EVENT_RENDER_DEVICE_LOST,


    SDL_EVENT_PRIVATE0 = 0x4000,
    SDL_EVENT_PRIVATE1,
    SDL_EVENT_PRIVATE2,
    SDL_EVENT_PRIVATE3,


    SDL_EVENT_POLL_SENTINEL = 0x7F00,




    SDL_EVENT_USER = 0x8000,




    SDL_EVENT_LAST = 0xFFFF,


    SDL_EVENT_ENUM_PADDING = 0x7FFFFFFF

} SDL_EventType;






typedef struct SDL_CommonEvent
{
    Uint32 type;
    Uint32 reserved;
    Uint64 timestamp;
} SDL_CommonEvent;






typedef struct SDL_DisplayEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_DisplayID displayID;
    Sint32 data1;
    Sint32 data2;
} SDL_DisplayEvent;






typedef struct SDL_WindowEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_WindowID windowID;
    Sint32 data1;
    Sint32 data2;
} SDL_WindowEvent;






typedef struct SDL_KeyboardDeviceEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_KeyboardID which;
} SDL_KeyboardDeviceEvent;
# 360 "/usr/local/include/SDL3/SDL_events.h" 3
typedef struct SDL_KeyboardEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_WindowID windowID;
    SDL_KeyboardID which;
    SDL_Scancode scancode;
    SDL_Keycode key;
    SDL_Keymod mod;
    Uint16 raw;
    bool down;
    bool repeat;
} SDL_KeyboardEvent;
# 384 "/usr/local/include/SDL3/SDL_events.h" 3
typedef struct SDL_TextEditingEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_WindowID windowID;
    const char *text;
    Sint32 start;
    Sint32 length;
} SDL_TextEditingEvent;






typedef struct SDL_TextEditingCandidatesEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_WindowID windowID;
    const char * const *candidates;
    Sint32 num_candidates;
    Sint32 selected_candidate;
    bool horizontal;
    Uint8 padding1;
    Uint8 padding2;
    Uint8 padding3;
} SDL_TextEditingCandidatesEvent;
# 426 "/usr/local/include/SDL3/SDL_events.h" 3
typedef struct SDL_TextInputEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_WindowID windowID;
    const char *text;
} SDL_TextInputEvent;






typedef struct SDL_MouseDeviceEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_MouseID which;
} SDL_MouseDeviceEvent;






typedef struct SDL_MouseMotionEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_WindowID windowID;
    SDL_MouseID which;
    SDL_MouseButtonFlags state;
    float x;
    float y;
    float xrel;
    float yrel;
} SDL_MouseMotionEvent;






typedef struct SDL_MouseButtonEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_WindowID windowID;
    SDL_MouseID which;
    Uint8 button;
    bool down;
    Uint8 clicks;
    Uint8 padding;
    float x;
    float y;
} SDL_MouseButtonEvent;






typedef struct SDL_MouseWheelEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_WindowID windowID;
    SDL_MouseID which;
    float x;
    float y;
    SDL_MouseWheelDirection direction;
    float mouse_x;
    float mouse_y;
    Sint32 integer_x;
    Sint32 integer_y;
} SDL_MouseWheelEvent;






typedef struct SDL_JoyAxisEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_JoystickID which;
    Uint8 axis;
    Uint8 padding1;
    Uint8 padding2;
    Uint8 padding3;
    Sint16 value;
    Uint16 padding4;
} SDL_JoyAxisEvent;






typedef struct SDL_JoyBallEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_JoystickID which;
    Uint8 ball;
    Uint8 padding1;
    Uint8 padding2;
    Uint8 padding3;
    Sint16 xrel;
    Sint16 yrel;
} SDL_JoyBallEvent;






typedef struct SDL_JoyHatEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_JoystickID which;
    Uint8 hat;
    Uint8 value;






    Uint8 padding1;
    Uint8 padding2;
} SDL_JoyHatEvent;






typedef struct SDL_JoyButtonEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_JoystickID which;
    Uint8 button;
    bool down;
    Uint8 padding1;
    Uint8 padding2;
} SDL_JoyButtonEvent;
# 596 "/usr/local/include/SDL3/SDL_events.h" 3
typedef struct SDL_JoyDeviceEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_JoystickID which;
} SDL_JoyDeviceEvent;






typedef struct SDL_JoyBatteryEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_JoystickID which;
    SDL_PowerState state;
    int percent;
} SDL_JoyBatteryEvent;






typedef struct SDL_GamepadAxisEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_JoystickID which;
    Uint8 axis;
    Uint8 padding1;
    Uint8 padding2;
    Uint8 padding3;
    Sint16 value;
    Uint16 padding4;
} SDL_GamepadAxisEvent;







typedef struct SDL_GamepadButtonEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_JoystickID which;
    Uint8 button;
    bool down;
    Uint8 padding1;
    Uint8 padding2;
} SDL_GamepadButtonEvent;
# 671 "/usr/local/include/SDL3/SDL_events.h" 3
typedef struct SDL_GamepadDeviceEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_JoystickID which;
} SDL_GamepadDeviceEvent;






typedef struct SDL_GamepadTouchpadEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_JoystickID which;
    Sint32 touchpad;
    Sint32 finger;
    float x;
    float y;
    float pressure;
} SDL_GamepadTouchpadEvent;






typedef struct SDL_GamepadSensorEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_JoystickID which;
    Sint32 sensor;
    float data[3];
    Uint64 sensor_timestamp;
} SDL_GamepadSensorEvent;
# 722 "/usr/local/include/SDL3/SDL_events.h" 3
typedef struct SDL_AudioDeviceEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_AudioDeviceID which;
    bool recording;
    Uint8 padding1;
    Uint8 padding2;
    Uint8 padding3;
} SDL_AudioDeviceEvent;






typedef struct SDL_CameraDeviceEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_CameraID which;
} SDL_CameraDeviceEvent;







typedef struct SDL_RenderEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_WindowID windowID;
} SDL_RenderEvent;
# 781 "/usr/local/include/SDL3/SDL_events.h" 3
typedef struct SDL_TouchFingerEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_TouchID touchID;
    SDL_FingerID fingerID;
    float x;
    float y;
    float dx;
    float dy;
    float pressure;
    SDL_WindowID windowID;
} SDL_TouchFingerEvent;




typedef struct SDL_PinchFingerEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    float scale;
    SDL_WindowID windowID;
} SDL_PinchFingerEvent;
# 826 "/usr/local/include/SDL3/SDL_events.h" 3
typedef struct SDL_PenProximityEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_WindowID windowID;
    SDL_PenID which;
} SDL_PenProximityEvent;
# 846 "/usr/local/include/SDL3/SDL_events.h" 3
typedef struct SDL_PenMotionEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_WindowID windowID;
    SDL_PenID which;
    SDL_PenInputFlags pen_state;
    float x;
    float y;
} SDL_PenMotionEvent;
# 866 "/usr/local/include/SDL3/SDL_events.h" 3
typedef struct SDL_PenTouchEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_WindowID windowID;
    SDL_PenID which;
    SDL_PenInputFlags pen_state;
    float x;
    float y;
    bool eraser;
    bool down;
} SDL_PenTouchEvent;
# 888 "/usr/local/include/SDL3/SDL_events.h" 3
typedef struct SDL_PenButtonEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_WindowID windowID;
    SDL_PenID which;
    SDL_PenInputFlags pen_state;
    float x;
    float y;
    Uint8 button;
    bool down;
} SDL_PenButtonEvent;
# 910 "/usr/local/include/SDL3/SDL_events.h" 3
typedef struct SDL_PenAxisEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_WindowID windowID;
    SDL_PenID which;
    SDL_PenInputFlags pen_state;
    float x;
    float y;
    SDL_PenAxis axis;
    float value;
} SDL_PenAxisEvent;







typedef struct SDL_DropEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_WindowID windowID;
    float x;
    float y;
    const char *source;
    const char *data;
} SDL_DropEvent;







typedef struct SDL_ClipboardEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    bool owner;
    Sint32 num_mime_types;
    const char **mime_types;
} SDL_ClipboardEvent;






typedef struct SDL_SensorEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_SensorID which;
    float data[6];
    Uint64 sensor_timestamp;
} SDL_SensorEvent;






typedef struct SDL_QuitEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
} SDL_QuitEvent;
# 996 "/usr/local/include/SDL3/SDL_events.h" 3
typedef struct SDL_UserEvent
{
    Uint32 type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_WindowID windowID;
    Sint32 code;
    void *data1;
    void *data2;
} SDL_UserEvent;
# 1016 "/usr/local/include/SDL3/SDL_events.h" 3
typedef union SDL_Event
{
    Uint32 type;
    SDL_CommonEvent common;
    SDL_DisplayEvent display;
    SDL_WindowEvent window;
    SDL_KeyboardDeviceEvent kdevice;
    SDL_KeyboardEvent key;
    SDL_TextEditingEvent edit;
    SDL_TextEditingCandidatesEvent edit_candidates;
    SDL_TextInputEvent text;
    SDL_MouseDeviceEvent mdevice;
    SDL_MouseMotionEvent motion;
    SDL_MouseButtonEvent button;
    SDL_MouseWheelEvent wheel;
    SDL_JoyDeviceEvent jdevice;
    SDL_JoyAxisEvent jaxis;
    SDL_JoyBallEvent jball;
    SDL_JoyHatEvent jhat;
    SDL_JoyButtonEvent jbutton;
    SDL_JoyBatteryEvent jbattery;
    SDL_GamepadDeviceEvent gdevice;
    SDL_GamepadAxisEvent gaxis;
    SDL_GamepadButtonEvent gbutton;
    SDL_GamepadTouchpadEvent gtouchpad;
    SDL_GamepadSensorEvent gsensor;
    SDL_AudioDeviceEvent adevice;
    SDL_CameraDeviceEvent cdevice;
    SDL_SensorEvent sensor;
    SDL_QuitEvent quit;
    SDL_UserEvent user;
    SDL_TouchFingerEvent tfinger;
    SDL_PinchFingerEvent pinch;
    SDL_PenProximityEvent pproximity;
    SDL_PenTouchEvent ptouch;
    SDL_PenMotionEvent pmotion;
    SDL_PenButtonEvent pbutton;
    SDL_PenAxisEvent paxis;
    SDL_RenderEvent render;
    SDL_DropEvent drop;
    SDL_ClipboardEvent clipboard;
# 1071 "/usr/local/include/SDL3/SDL_events.h" 3
    Uint8 padding[128];
} SDL_Event;


static_assert(sizeof(SDL_Event) == sizeof((static_cast<SDL_Event *>(__null))->padding), "sizeof(SDL_Event) == sizeof((SDL_static_cast(SDL_Event *, NULL))->padding)");
# 1100 "/usr/local/include/SDL3/SDL_events.h" 3
extern __attribute__ ((visibility("default"))) void SDL_PumpEvents(void);
# 1109 "/usr/local/include/SDL3/SDL_events.h" 3
typedef enum SDL_EventAction
{
    SDL_ADDEVENT,
    SDL_PEEKEVENT,
    SDL_GETEVENT
} SDL_EventAction;
# 1158 "/usr/local/include/SDL3/SDL_events.h" 3
extern __attribute__ ((visibility("default"))) int SDL_PeepEvents(SDL_Event *events, int numevents, SDL_EventAction action, Uint32 minType, Uint32 maxType);
# 1177 "/usr/local/include/SDL3/SDL_events.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_HasEvent(Uint32 type);
# 1198 "/usr/local/include/SDL3/SDL_events.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_HasEvents(Uint32 minType, Uint32 maxType);
# 1226 "/usr/local/include/SDL3/SDL_events.h" 3
extern __attribute__ ((visibility("default"))) void SDL_FlushEvent(Uint32 type);
# 1253 "/usr/local/include/SDL3/SDL_events.h" 3
extern __attribute__ ((visibility("default"))) void SDL_FlushEvents(Uint32 minType, Uint32 maxType);
# 1304 "/usr/local/include/SDL3/SDL_events.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_PollEvent(SDL_Event *event);
# 1328 "/usr/local/include/SDL3/SDL_events.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_WaitEvent(SDL_Event *event);
# 1358 "/usr/local/include/SDL3/SDL_events.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_WaitEventTimeout(SDL_Event *event, Sint32 timeoutMS);
# 1392 "/usr/local/include/SDL3/SDL_events.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_PushEvent(SDL_Event *event);
# 1413 "/usr/local/include/SDL3/SDL_events.h" 3
typedef bool ( *SDL_EventFilter)(void *userdata, SDL_Event *event);
# 1457 "/usr/local/include/SDL3/SDL_events.h" 3
extern __attribute__ ((visibility("default"))) void SDL_SetEventFilter(SDL_EventFilter filter, void *userdata);
# 1476 "/usr/local/include/SDL3/SDL_events.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetEventFilter(SDL_EventFilter *filter, void **userdata);
# 1508 "/usr/local/include/SDL3/SDL_events.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_AddEventWatch(SDL_EventFilter filter, void *userdata);
# 1525 "/usr/local/include/SDL3/SDL_events.h" 3
extern __attribute__ ((visibility("default"))) void SDL_RemoveEventWatch(SDL_EventFilter filter, void *userdata);
# 1545 "/usr/local/include/SDL3/SDL_events.h" 3
extern __attribute__ ((visibility("default"))) void SDL_FilterEvents(SDL_EventFilter filter, void *userdata);
# 1559 "/usr/local/include/SDL3/SDL_events.h" 3
extern __attribute__ ((visibility("default"))) void SDL_SetEventEnabled(Uint32 type, bool enabled);
# 1573 "/usr/local/include/SDL3/SDL_events.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_EventEnabled(Uint32 type);
# 1589 "/usr/local/include/SDL3/SDL_events.h" 3
extern __attribute__ ((visibility("default"))) Uint32 SDL_RegisterEvents(int numevents);
# 1605 "/usr/local/include/SDL3/SDL_events.h" 3
extern __attribute__ ((visibility("default"))) SDL_Window * SDL_GetWindowFromEvent(const SDL_Event *event);
# 1637 "/usr/local/include/SDL3/SDL_events.h" 3
extern __attribute__ ((visibility("default"))) int SDL_GetEventDescription(const SDL_Event *event, char *buf, int buflen);



}

# 1 "/usr/local/include/SDL3/SDL_close_code.h" 1 3
# 1644 "/usr/local/include/SDL3/SDL_events.h" 2 3
# 49 "/usr/local/include/SDL3/SDL.h" 2 3
# 1 "/usr/local/include/SDL3/SDL_filesystem.h" 1 3
# 50 "/usr/local/include/SDL3/SDL_filesystem.h" 3
# 1 "/usr/local/include/SDL3/SDL_begin_code.h" 1 3
# 51 "/usr/local/include/SDL3/SDL_filesystem.h" 2 3



extern "C" {
# 101 "/usr/local/include/SDL3/SDL_filesystem.h" 3
extern __attribute__ ((visibility("default"))) const char * SDL_GetBasePath(void);
# 164 "/usr/local/include/SDL3/SDL_filesystem.h" 3
extern __attribute__ ((visibility("default"))) char * SDL_GetPrefPath(const char *org, const char *app);
# 195 "/usr/local/include/SDL3/SDL_filesystem.h" 3
typedef enum SDL_Folder
{
    SDL_FOLDER_HOME,
    SDL_FOLDER_DESKTOP,
    SDL_FOLDER_DOCUMENTS,
    SDL_FOLDER_DOWNLOADS,
    SDL_FOLDER_MUSIC,
    SDL_FOLDER_PICTURES,
    SDL_FOLDER_PUBLICSHARE,
    SDL_FOLDER_SAVEDGAMES,
    SDL_FOLDER_SCREENSHOTS,
    SDL_FOLDER_TEMPLATES,
    SDL_FOLDER_VIDEOS,
    SDL_FOLDER_COUNT
} SDL_Folder;
# 236 "/usr/local/include/SDL3/SDL_filesystem.h" 3
extern __attribute__ ((visibility("default"))) const char * SDL_GetUserFolder(SDL_Folder folder);
# 252 "/usr/local/include/SDL3/SDL_filesystem.h" 3
typedef enum SDL_PathType
{
    SDL_PATHTYPE_NONE,
    SDL_PATHTYPE_FILE,
    SDL_PATHTYPE_DIRECTORY,
    SDL_PATHTYPE_OTHER
} SDL_PathType;
# 268 "/usr/local/include/SDL3/SDL_filesystem.h" 3
typedef struct SDL_PathInfo
{
    SDL_PathType type;
    Uint64 size;
    SDL_Time create_time;
    SDL_Time modify_time;
    SDL_Time access_time;
} SDL_PathInfo;
# 285 "/usr/local/include/SDL3/SDL_filesystem.h" 3
typedef Uint32 SDL_GlobFlags;
# 305 "/usr/local/include/SDL3/SDL_filesystem.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_CreateDirectory(const char *path);
# 314 "/usr/local/include/SDL3/SDL_filesystem.h" 3
typedef enum SDL_EnumerationResult
{
    SDL_ENUM_CONTINUE,
    SDL_ENUM_SUCCESS,
    SDL_ENUM_FAILURE
} SDL_EnumerationResult;
# 345 "/usr/local/include/SDL3/SDL_filesystem.h" 3
typedef SDL_EnumerationResult ( *SDL_EnumerateDirectoryCallback)(void *userdata, const char *dirname, const char *fname);
# 370 "/usr/local/include/SDL3/SDL_filesystem.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_EnumerateDirectory(const char *path, SDL_EnumerateDirectoryCallback callback, void *userdata);
# 386 "/usr/local/include/SDL3/SDL_filesystem.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_RemovePath(const char *path);
# 411 "/usr/local/include/SDL3/SDL_filesystem.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_RenamePath(const char *oldpath, const char *newpath);
# 455 "/usr/local/include/SDL3/SDL_filesystem.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_CopyFile(const char *oldpath, const char *newpath);
# 470 "/usr/local/include/SDL3/SDL_filesystem.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetPathInfo(const char *path, SDL_PathInfo *info);
# 503 "/usr/local/include/SDL3/SDL_filesystem.h" 3
extern __attribute__ ((visibility("default"))) char ** SDL_GlobDirectory(const char *path, const char *pattern, SDL_GlobFlags flags, int *count);
# 526 "/usr/local/include/SDL3/SDL_filesystem.h" 3
extern __attribute__ ((visibility("default"))) char * SDL_GetCurrentDirectory(void);



}

# 1 "/usr/local/include/SDL3/SDL_close_code.h" 1 3
# 533 "/usr/local/include/SDL3/SDL_filesystem.h" 2 3
# 50 "/usr/local/include/SDL3/SDL.h" 2 3

# 1 "/usr/local/include/SDL3/SDL_gpu.h" 1 3
# 399 "/usr/local/include/SDL3/SDL_gpu.h" 3
# 1 "/usr/local/include/SDL3/SDL_begin_code.h" 1 3
# 400 "/usr/local/include/SDL3/SDL_gpu.h" 2 3

extern "C" {
# 411 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef struct SDL_GPUDevice SDL_GPUDevice;
# 435 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef struct SDL_GPUBuffer SDL_GPUBuffer;
# 453 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef struct SDL_GPUTransferBuffer SDL_GPUTransferBuffer;
# 473 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef struct SDL_GPUTexture SDL_GPUTexture;
# 485 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef struct SDL_GPUSampler SDL_GPUSampler;
# 496 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef struct SDL_GPUShader SDL_GPUShader;
# 509 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef struct SDL_GPUComputePipeline SDL_GPUComputePipeline;
# 522 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef struct SDL_GPUGraphicsPipeline SDL_GPUGraphicsPipeline;
# 547 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef struct SDL_GPUCommandBuffer SDL_GPUCommandBuffer;
# 560 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef struct SDL_GPURenderPass SDL_GPURenderPass;
# 573 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef struct SDL_GPUComputePass SDL_GPUComputePass;
# 586 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef struct SDL_GPUCopyPass SDL_GPUCopyPass;
# 598 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef struct SDL_GPUFence SDL_GPUFence;
# 621 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef enum SDL_GPUPrimitiveType
{
    SDL_GPU_PRIMITIVETYPE_TRIANGLELIST,
    SDL_GPU_PRIMITIVETYPE_TRIANGLESTRIP,
    SDL_GPU_PRIMITIVETYPE_LINELIST,
    SDL_GPU_PRIMITIVETYPE_LINESTRIP,
    SDL_GPU_PRIMITIVETYPE_POINTLIST
} SDL_GPUPrimitiveType;
# 638 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef enum SDL_GPULoadOp
{
    SDL_GPU_LOADOP_LOAD,
    SDL_GPU_LOADOP_CLEAR,
    SDL_GPU_LOADOP_DONT_CARE
} SDL_GPULoadOp;
# 653 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef enum SDL_GPUStoreOp
{
    SDL_GPU_STOREOP_STORE,
    SDL_GPU_STOREOP_DONT_CARE,
    SDL_GPU_STOREOP_RESOLVE,
    SDL_GPU_STOREOP_RESOLVE_AND_STORE
} SDL_GPUStoreOp;
# 668 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef enum SDL_GPUIndexElementSize
{
    SDL_GPU_INDEXELEMENTSIZE_16BIT,
    SDL_GPU_INDEXELEMENTSIZE_32BIT
} SDL_GPUIndexElementSize;
# 759 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef enum SDL_GPUTextureFormat
{
    SDL_GPU_TEXTUREFORMAT_INVALID,


    SDL_GPU_TEXTUREFORMAT_A8_UNORM,
    SDL_GPU_TEXTUREFORMAT_R8_UNORM,
    SDL_GPU_TEXTUREFORMAT_R8G8_UNORM,
    SDL_GPU_TEXTUREFORMAT_R8G8B8A8_UNORM,
    SDL_GPU_TEXTUREFORMAT_R16_UNORM,
    SDL_GPU_TEXTUREFORMAT_R16G16_UNORM,
    SDL_GPU_TEXTUREFORMAT_R16G16B16A16_UNORM,
    SDL_GPU_TEXTUREFORMAT_R10G10B10A2_UNORM,
    SDL_GPU_TEXTUREFORMAT_B5G6R5_UNORM,
    SDL_GPU_TEXTUREFORMAT_B5G5R5A1_UNORM,
    SDL_GPU_TEXTUREFORMAT_B4G4R4A4_UNORM,
    SDL_GPU_TEXTUREFORMAT_B8G8R8A8_UNORM,

    SDL_GPU_TEXTUREFORMAT_BC1_RGBA_UNORM,
    SDL_GPU_TEXTUREFORMAT_BC2_RGBA_UNORM,
    SDL_GPU_TEXTUREFORMAT_BC3_RGBA_UNORM,
    SDL_GPU_TEXTUREFORMAT_BC4_R_UNORM,
    SDL_GPU_TEXTUREFORMAT_BC5_RG_UNORM,
    SDL_GPU_TEXTUREFORMAT_BC7_RGBA_UNORM,

    SDL_GPU_TEXTUREFORMAT_BC6H_RGB_FLOAT,

    SDL_GPU_TEXTUREFORMAT_BC6H_RGB_UFLOAT,

    SDL_GPU_TEXTUREFORMAT_R8_SNORM,
    SDL_GPU_TEXTUREFORMAT_R8G8_SNORM,
    SDL_GPU_TEXTUREFORMAT_R8G8B8A8_SNORM,
    SDL_GPU_TEXTUREFORMAT_R16_SNORM,
    SDL_GPU_TEXTUREFORMAT_R16G16_SNORM,
    SDL_GPU_TEXTUREFORMAT_R16G16B16A16_SNORM,

    SDL_GPU_TEXTUREFORMAT_R16_FLOAT,
    SDL_GPU_TEXTUREFORMAT_R16G16_FLOAT,
    SDL_GPU_TEXTUREFORMAT_R16G16B16A16_FLOAT,
    SDL_GPU_TEXTUREFORMAT_R32_FLOAT,
    SDL_GPU_TEXTUREFORMAT_R32G32_FLOAT,
    SDL_GPU_TEXTUREFORMAT_R32G32B32A32_FLOAT,

    SDL_GPU_TEXTUREFORMAT_R11G11B10_UFLOAT,

    SDL_GPU_TEXTUREFORMAT_R8_UINT,
    SDL_GPU_TEXTUREFORMAT_R8G8_UINT,
    SDL_GPU_TEXTUREFORMAT_R8G8B8A8_UINT,
    SDL_GPU_TEXTUREFORMAT_R16_UINT,
    SDL_GPU_TEXTUREFORMAT_R16G16_UINT,
    SDL_GPU_TEXTUREFORMAT_R16G16B16A16_UINT,
    SDL_GPU_TEXTUREFORMAT_R32_UINT,
    SDL_GPU_TEXTUREFORMAT_R32G32_UINT,
    SDL_GPU_TEXTUREFORMAT_R32G32B32A32_UINT,

    SDL_GPU_TEXTUREFORMAT_R8_INT,
    SDL_GPU_TEXTUREFORMAT_R8G8_INT,
    SDL_GPU_TEXTUREFORMAT_R8G8B8A8_INT,
    SDL_GPU_TEXTUREFORMAT_R16_INT,
    SDL_GPU_TEXTUREFORMAT_R16G16_INT,
    SDL_GPU_TEXTUREFORMAT_R16G16B16A16_INT,
    SDL_GPU_TEXTUREFORMAT_R32_INT,
    SDL_GPU_TEXTUREFORMAT_R32G32_INT,
    SDL_GPU_TEXTUREFORMAT_R32G32B32A32_INT,

    SDL_GPU_TEXTUREFORMAT_R8G8B8A8_UNORM_SRGB,
    SDL_GPU_TEXTUREFORMAT_B8G8R8A8_UNORM_SRGB,

    SDL_GPU_TEXTUREFORMAT_BC1_RGBA_UNORM_SRGB,
    SDL_GPU_TEXTUREFORMAT_BC2_RGBA_UNORM_SRGB,
    SDL_GPU_TEXTUREFORMAT_BC3_RGBA_UNORM_SRGB,
    SDL_GPU_TEXTUREFORMAT_BC7_RGBA_UNORM_SRGB,

    SDL_GPU_TEXTUREFORMAT_D16_UNORM,
    SDL_GPU_TEXTUREFORMAT_D24_UNORM,
    SDL_GPU_TEXTUREFORMAT_D32_FLOAT,
    SDL_GPU_TEXTUREFORMAT_D24_UNORM_S8_UINT,
    SDL_GPU_TEXTUREFORMAT_D32_FLOAT_S8_UINT,

    SDL_GPU_TEXTUREFORMAT_ASTC_4x4_UNORM,
    SDL_GPU_TEXTUREFORMAT_ASTC_5x4_UNORM,
    SDL_GPU_TEXTUREFORMAT_ASTC_5x5_UNORM,
    SDL_GPU_TEXTUREFORMAT_ASTC_6x5_UNORM,
    SDL_GPU_TEXTUREFORMAT_ASTC_6x6_UNORM,
    SDL_GPU_TEXTUREFORMAT_ASTC_8x5_UNORM,
    SDL_GPU_TEXTUREFORMAT_ASTC_8x6_UNORM,
    SDL_GPU_TEXTUREFORMAT_ASTC_8x8_UNORM,
    SDL_GPU_TEXTUREFORMAT_ASTC_10x5_UNORM,
    SDL_GPU_TEXTUREFORMAT_ASTC_10x6_UNORM,
    SDL_GPU_TEXTUREFORMAT_ASTC_10x8_UNORM,
    SDL_GPU_TEXTUREFORMAT_ASTC_10x10_UNORM,
    SDL_GPU_TEXTUREFORMAT_ASTC_12x10_UNORM,
    SDL_GPU_TEXTUREFORMAT_ASTC_12x12_UNORM,

    SDL_GPU_TEXTUREFORMAT_ASTC_4x4_UNORM_SRGB,
    SDL_GPU_TEXTUREFORMAT_ASTC_5x4_UNORM_SRGB,
    SDL_GPU_TEXTUREFORMAT_ASTC_5x5_UNORM_SRGB,
    SDL_GPU_TEXTUREFORMAT_ASTC_6x5_UNORM_SRGB,
    SDL_GPU_TEXTUREFORMAT_ASTC_6x6_UNORM_SRGB,
    SDL_GPU_TEXTUREFORMAT_ASTC_8x5_UNORM_SRGB,
    SDL_GPU_TEXTUREFORMAT_ASTC_8x6_UNORM_SRGB,
    SDL_GPU_TEXTUREFORMAT_ASTC_8x8_UNORM_SRGB,
    SDL_GPU_TEXTUREFORMAT_ASTC_10x5_UNORM_SRGB,
    SDL_GPU_TEXTUREFORMAT_ASTC_10x6_UNORM_SRGB,
    SDL_GPU_TEXTUREFORMAT_ASTC_10x8_UNORM_SRGB,
    SDL_GPU_TEXTUREFORMAT_ASTC_10x10_UNORM_SRGB,
    SDL_GPU_TEXTUREFORMAT_ASTC_12x10_UNORM_SRGB,
    SDL_GPU_TEXTUREFORMAT_ASTC_12x12_UNORM_SRGB,

    SDL_GPU_TEXTUREFORMAT_ASTC_4x4_FLOAT,
    SDL_GPU_TEXTUREFORMAT_ASTC_5x4_FLOAT,
    SDL_GPU_TEXTUREFORMAT_ASTC_5x5_FLOAT,
    SDL_GPU_TEXTUREFORMAT_ASTC_6x5_FLOAT,
    SDL_GPU_TEXTUREFORMAT_ASTC_6x6_FLOAT,
    SDL_GPU_TEXTUREFORMAT_ASTC_8x5_FLOAT,
    SDL_GPU_TEXTUREFORMAT_ASTC_8x6_FLOAT,
    SDL_GPU_TEXTUREFORMAT_ASTC_8x8_FLOAT,
    SDL_GPU_TEXTUREFORMAT_ASTC_10x5_FLOAT,
    SDL_GPU_TEXTUREFORMAT_ASTC_10x6_FLOAT,
    SDL_GPU_TEXTUREFORMAT_ASTC_10x8_FLOAT,
    SDL_GPU_TEXTUREFORMAT_ASTC_10x10_FLOAT,
    SDL_GPU_TEXTUREFORMAT_ASTC_12x10_FLOAT,
    SDL_GPU_TEXTUREFORMAT_ASTC_12x12_FLOAT
} SDL_GPUTextureFormat;
# 904 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef Uint32 SDL_GPUTextureUsageFlags;
# 921 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef enum SDL_GPUTextureType
{
    SDL_GPU_TEXTURETYPE_2D,
    SDL_GPU_TEXTURETYPE_2D_ARRAY,
    SDL_GPU_TEXTURETYPE_3D,
    SDL_GPU_TEXTURETYPE_CUBE,
    SDL_GPU_TEXTURETYPE_CUBE_ARRAY
} SDL_GPUTextureType;
# 941 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef enum SDL_GPUSampleCount
{
    SDL_GPU_SAMPLECOUNT_1,
    SDL_GPU_SAMPLECOUNT_2,
    SDL_GPU_SAMPLECOUNT_4,
    SDL_GPU_SAMPLECOUNT_8
} SDL_GPUSampleCount;
# 957 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef enum SDL_GPUCubeMapFace
{
    SDL_GPU_CUBEMAPFACE_POSITIVEX,
    SDL_GPU_CUBEMAPFACE_NEGATIVEX,
    SDL_GPU_CUBEMAPFACE_POSITIVEY,
    SDL_GPU_CUBEMAPFACE_NEGATIVEY,
    SDL_GPU_CUBEMAPFACE_POSITIVEZ,
    SDL_GPU_CUBEMAPFACE_NEGATIVEZ
} SDL_GPUCubeMapFace;
# 984 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef Uint32 SDL_GPUBufferUsageFlags;
# 1003 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef enum SDL_GPUTransferBufferUsage
{
    SDL_GPU_TRANSFERBUFFERUSAGE_UPLOAD,
    SDL_GPU_TRANSFERBUFFERUSAGE_DOWNLOAD
} SDL_GPUTransferBufferUsage;
# 1016 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef enum SDL_GPUShaderStage
{
    SDL_GPU_SHADERSTAGE_VERTEX,
    SDL_GPU_SHADERSTAGE_FRAGMENT
} SDL_GPUShaderStage;
# 1031 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef Uint32 SDL_GPUShaderFormat;
# 1048 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef enum SDL_GPUVertexElementFormat
{
    SDL_GPU_VERTEXELEMENTFORMAT_INVALID,


    SDL_GPU_VERTEXELEMENTFORMAT_INT,
    SDL_GPU_VERTEXELEMENTFORMAT_INT2,
    SDL_GPU_VERTEXELEMENTFORMAT_INT3,
    SDL_GPU_VERTEXELEMENTFORMAT_INT4,


    SDL_GPU_VERTEXELEMENTFORMAT_UINT,
    SDL_GPU_VERTEXELEMENTFORMAT_UINT2,
    SDL_GPU_VERTEXELEMENTFORMAT_UINT3,
    SDL_GPU_VERTEXELEMENTFORMAT_UINT4,


    SDL_GPU_VERTEXELEMENTFORMAT_FLOAT,
    SDL_GPU_VERTEXELEMENTFORMAT_FLOAT2,
    SDL_GPU_VERTEXELEMENTFORMAT_FLOAT3,
    SDL_GPU_VERTEXELEMENTFORMAT_FLOAT4,


    SDL_GPU_VERTEXELEMENTFORMAT_BYTE2,
    SDL_GPU_VERTEXELEMENTFORMAT_BYTE4,


    SDL_GPU_VERTEXELEMENTFORMAT_UBYTE2,
    SDL_GPU_VERTEXELEMENTFORMAT_UBYTE4,


    SDL_GPU_VERTEXELEMENTFORMAT_BYTE2_NORM,
    SDL_GPU_VERTEXELEMENTFORMAT_BYTE4_NORM,


    SDL_GPU_VERTEXELEMENTFORMAT_UBYTE2_NORM,
    SDL_GPU_VERTEXELEMENTFORMAT_UBYTE4_NORM,


    SDL_GPU_VERTEXELEMENTFORMAT_SHORT2,
    SDL_GPU_VERTEXELEMENTFORMAT_SHORT4,


    SDL_GPU_VERTEXELEMENTFORMAT_USHORT2,
    SDL_GPU_VERTEXELEMENTFORMAT_USHORT4,


    SDL_GPU_VERTEXELEMENTFORMAT_SHORT2_NORM,
    SDL_GPU_VERTEXELEMENTFORMAT_SHORT4_NORM,


    SDL_GPU_VERTEXELEMENTFORMAT_USHORT2_NORM,
    SDL_GPU_VERTEXELEMENTFORMAT_USHORT4_NORM,


    SDL_GPU_VERTEXELEMENTFORMAT_HALF2,
    SDL_GPU_VERTEXELEMENTFORMAT_HALF4
} SDL_GPUVertexElementFormat;
# 1114 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef enum SDL_GPUVertexInputRate
{
    SDL_GPU_VERTEXINPUTRATE_VERTEX,
    SDL_GPU_VERTEXINPUTRATE_INSTANCE
} SDL_GPUVertexInputRate;
# 1127 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef enum SDL_GPUFillMode
{
    SDL_GPU_FILLMODE_FILL,
    SDL_GPU_FILLMODE_LINE
} SDL_GPUFillMode;
# 1140 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef enum SDL_GPUCullMode
{
    SDL_GPU_CULLMODE_NONE,
    SDL_GPU_CULLMODE_FRONT,
    SDL_GPU_CULLMODE_BACK
} SDL_GPUCullMode;
# 1155 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef enum SDL_GPUFrontFace
{
    SDL_GPU_FRONTFACE_COUNTER_CLOCKWISE,
    SDL_GPU_FRONTFACE_CLOCKWISE
} SDL_GPUFrontFace;
# 1168 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef enum SDL_GPUCompareOp
{
    SDL_GPU_COMPAREOP_INVALID,
    SDL_GPU_COMPAREOP_NEVER,
    SDL_GPU_COMPAREOP_LESS,
    SDL_GPU_COMPAREOP_EQUAL,
    SDL_GPU_COMPAREOP_LESS_OR_EQUAL,
    SDL_GPU_COMPAREOP_GREATER,
    SDL_GPU_COMPAREOP_NOT_EQUAL,
    SDL_GPU_COMPAREOP_GREATER_OR_EQUAL,
    SDL_GPU_COMPAREOP_ALWAYS
} SDL_GPUCompareOp;
# 1189 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef enum SDL_GPUStencilOp
{
    SDL_GPU_STENCILOP_INVALID,
    SDL_GPU_STENCILOP_KEEP,
    SDL_GPU_STENCILOP_ZERO,
    SDL_GPU_STENCILOP_REPLACE,
    SDL_GPU_STENCILOP_INCREMENT_AND_CLAMP,
    SDL_GPU_STENCILOP_DECREMENT_AND_CLAMP,
    SDL_GPU_STENCILOP_INVERT,
    SDL_GPU_STENCILOP_INCREMENT_AND_WRAP,
    SDL_GPU_STENCILOP_DECREMENT_AND_WRAP
} SDL_GPUStencilOp;
# 1213 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef enum SDL_GPUBlendOp
{
    SDL_GPU_BLENDOP_INVALID,
    SDL_GPU_BLENDOP_ADD,
    SDL_GPU_BLENDOP_SUBTRACT,
    SDL_GPU_BLENDOP_REVERSE_SUBTRACT,
    SDL_GPU_BLENDOP_MIN,
    SDL_GPU_BLENDOP_MAX
} SDL_GPUBlendOp;
# 1234 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef enum SDL_GPUBlendFactor
{
    SDL_GPU_BLENDFACTOR_INVALID,
    SDL_GPU_BLENDFACTOR_ZERO,
    SDL_GPU_BLENDFACTOR_ONE,
    SDL_GPU_BLENDFACTOR_SRC_COLOR,
    SDL_GPU_BLENDFACTOR_ONE_MINUS_SRC_COLOR,
    SDL_GPU_BLENDFACTOR_DST_COLOR,
    SDL_GPU_BLENDFACTOR_ONE_MINUS_DST_COLOR,
    SDL_GPU_BLENDFACTOR_SRC_ALPHA,
    SDL_GPU_BLENDFACTOR_ONE_MINUS_SRC_ALPHA,
    SDL_GPU_BLENDFACTOR_DST_ALPHA,
    SDL_GPU_BLENDFACTOR_ONE_MINUS_DST_ALPHA,
    SDL_GPU_BLENDFACTOR_CONSTANT_COLOR,
    SDL_GPU_BLENDFACTOR_ONE_MINUS_CONSTANT_COLOR,
    SDL_GPU_BLENDFACTOR_SRC_ALPHA_SATURATE
} SDL_GPUBlendFactor;
# 1259 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef Uint8 SDL_GPUColorComponentFlags;
# 1273 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef enum SDL_GPUFilter
{
    SDL_GPU_FILTER_NEAREST,
    SDL_GPU_FILTER_LINEAR
} SDL_GPUFilter;
# 1286 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef enum SDL_GPUSamplerMipmapMode
{
    SDL_GPU_SAMPLERMIPMAPMODE_NEAREST,
    SDL_GPU_SAMPLERMIPMAPMODE_LINEAR
} SDL_GPUSamplerMipmapMode;
# 1300 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef enum SDL_GPUSamplerAddressMode
{
    SDL_GPU_SAMPLERADDRESSMODE_REPEAT,
    SDL_GPU_SAMPLERADDRESSMODE_MIRRORED_REPEAT,
    SDL_GPU_SAMPLERADDRESSMODE_CLAMP_TO_EDGE
} SDL_GPUSamplerAddressMode;
# 1332 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef enum SDL_GPUPresentMode
{
    SDL_GPU_PRESENTMODE_VSYNC,
    SDL_GPU_PRESENTMODE_IMMEDIATE,
    SDL_GPU_PRESENTMODE_MAILBOX
} SDL_GPUPresentMode;
# 1365 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef enum SDL_GPUSwapchainComposition
{
    SDL_GPU_SWAPCHAINCOMPOSITION_SDR,
    SDL_GPU_SWAPCHAINCOMPOSITION_SDR_LINEAR,
    SDL_GPU_SWAPCHAINCOMPOSITION_HDR_EXTENDED_LINEAR,
    SDL_GPU_SWAPCHAINCOMPOSITION_HDR10_ST2084
} SDL_GPUSwapchainComposition;
# 1382 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef struct SDL_GPUViewport
{
    float x;
    float y;
    float w;
    float h;
    float min_depth;
    float max_depth;
} SDL_GPUViewport;
# 1413 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef struct SDL_GPUTextureTransferInfo
{
    SDL_GPUTransferBuffer *transfer_buffer;
    Uint32 offset;
    Uint32 pixels_per_row;
    Uint32 rows_per_layer;
} SDL_GPUTextureTransferInfo;
# 1431 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef struct SDL_GPUTransferBufferLocation
{
    SDL_GPUTransferBuffer *transfer_buffer;
    Uint32 offset;
} SDL_GPUTransferBufferLocation;
# 1446 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef struct SDL_GPUTextureLocation
{
    SDL_GPUTexture *texture;
    Uint32 mip_level;
    Uint32 layer;
    Uint32 x;
    Uint32 y;
    Uint32 z;
} SDL_GPUTextureLocation;
# 1467 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef struct SDL_GPUTextureRegion
{
    SDL_GPUTexture *texture;
    Uint32 mip_level;
    Uint32 layer;
    Uint32 x;
    Uint32 y;
    Uint32 z;
    Uint32 w;
    Uint32 h;
    Uint32 d;
} SDL_GPUTextureRegion;
# 1487 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef struct SDL_GPUBlitRegion
{
    SDL_GPUTexture *texture;
    Uint32 mip_level;
    Uint32 layer_or_depth_plane;
    Uint32 x;
    Uint32 y;
    Uint32 w;
    Uint32 h;
} SDL_GPUBlitRegion;
# 1507 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef struct SDL_GPUBufferLocation
{
    SDL_GPUBuffer *buffer;
    Uint32 offset;
} SDL_GPUBufferLocation;
# 1523 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef struct SDL_GPUBufferRegion
{
    SDL_GPUBuffer *buffer;
    Uint32 offset;
    Uint32 size;
} SDL_GPUBufferRegion;
# 1544 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef struct SDL_GPUIndirectDrawCommand
{
    Uint32 num_vertices;
    Uint32 num_instances;
    Uint32 first_vertex;
    Uint32 first_instance;
} SDL_GPUIndirectDrawCommand;
# 1566 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef struct SDL_GPUIndexedIndirectDrawCommand
{
    Uint32 num_indices;
    Uint32 num_instances;
    Uint32 first_index;
    Sint32 vertex_offset;
    Uint32 first_instance;
} SDL_GPUIndexedIndirectDrawCommand;
# 1582 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef struct SDL_GPUIndirectDispatchCommand
{
    Uint32 groupcount_x;
    Uint32 groupcount_y;
    Uint32 groupcount_z;
} SDL_GPUIndirectDispatchCommand;
# 1605 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef struct SDL_GPUSamplerCreateInfo
{
    SDL_GPUFilter min_filter;
    SDL_GPUFilter mag_filter;
    SDL_GPUSamplerMipmapMode mipmap_mode;
    SDL_GPUSamplerAddressMode address_mode_u;
    SDL_GPUSamplerAddressMode address_mode_v;
    SDL_GPUSamplerAddressMode address_mode_w;
    float mip_lod_bias;
    float max_anisotropy;
    SDL_GPUCompareOp compare_op;
    float min_lod;
    float max_lod;
    bool enable_anisotropy;
    bool enable_compare;
    Uint8 padding1;
    Uint8 padding2;

    SDL_PropertiesID props;
} SDL_GPUSamplerCreateInfo;
# 1644 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef struct SDL_GPUVertexBufferDescription
{
    Uint32 slot;
    Uint32 pitch;
    SDL_GPUVertexInputRate input_rate;
    Uint32 instance_step_rate;
} SDL_GPUVertexBufferDescription;
# 1664 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef struct SDL_GPUVertexAttribute
{
    Uint32 location;
    Uint32 buffer_slot;
    SDL_GPUVertexElementFormat format;
    Uint32 offset;
} SDL_GPUVertexAttribute;
# 1682 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef struct SDL_GPUVertexInputState
{
    const SDL_GPUVertexBufferDescription *vertex_buffer_descriptions;
    Uint32 num_vertex_buffers;
    const SDL_GPUVertexAttribute *vertex_attributes;
    Uint32 num_vertex_attributes;
} SDL_GPUVertexInputState;
# 1697 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef struct SDL_GPUStencilOpState
{
    SDL_GPUStencilOp fail_op;
    SDL_GPUStencilOp pass_op;
    SDL_GPUStencilOp depth_fail_op;
    SDL_GPUCompareOp compare_op;
} SDL_GPUStencilOpState;
# 1715 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef struct SDL_GPUColorTargetBlendState
{
    SDL_GPUBlendFactor src_color_blendfactor;
    SDL_GPUBlendFactor dst_color_blendfactor;
    SDL_GPUBlendOp color_blend_op;
    SDL_GPUBlendFactor src_alpha_blendfactor;
    SDL_GPUBlendFactor dst_alpha_blendfactor;
    SDL_GPUBlendOp alpha_blend_op;
    SDL_GPUColorComponentFlags color_write_mask;
    bool enable_blend;
    bool enable_color_write_mask;
    Uint8 padding1;
    Uint8 padding2;
} SDL_GPUColorTargetBlendState;
# 1740 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef struct SDL_GPUShaderCreateInfo
{
    size_t code_size;
    const Uint8 *code;
    const char *entrypoint;
    SDL_GPUShaderFormat format;
    SDL_GPUShaderStage stage;
    Uint32 num_samplers;
    Uint32 num_storage_textures;
    Uint32 num_storage_buffers;
    Uint32 num_uniform_buffers;

    SDL_PropertiesID props;
} SDL_GPUShaderCreateInfo;
# 1770 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef struct SDL_GPUTextureCreateInfo
{
    SDL_GPUTextureType type;
    SDL_GPUTextureFormat format;
    SDL_GPUTextureUsageFlags usage;
    Uint32 width;
    Uint32 height;
    Uint32 layer_count_or_depth;
    Uint32 num_levels;
    SDL_GPUSampleCount sample_count;

    SDL_PropertiesID props;
} SDL_GPUTextureCreateInfo;
# 1795 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef struct SDL_GPUBufferCreateInfo
{
    SDL_GPUBufferUsageFlags usage;
    Uint32 size;

    SDL_PropertiesID props;
} SDL_GPUBufferCreateInfo;
# 1810 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef struct SDL_GPUTransferBufferCreateInfo
{
    SDL_GPUTransferBufferUsage usage;
    Uint32 size;

    SDL_PropertiesID props;
} SDL_GPUTransferBufferCreateInfo;
# 1836 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef struct SDL_GPURasterizerState
{
    SDL_GPUFillMode fill_mode;
    SDL_GPUCullMode cull_mode;
    SDL_GPUFrontFace front_face;
    float depth_bias_constant_factor;
    float depth_bias_clamp;
    float depth_bias_slope_factor;
    bool enable_depth_bias;
    bool enable_depth_clip;
    Uint8 padding1;
    Uint8 padding2;
} SDL_GPURasterizerState;
# 1858 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef struct SDL_GPUMultisampleState
{
    SDL_GPUSampleCount sample_count;
    Uint32 sample_mask;
    bool enable_mask;
    bool enable_alpha_to_coverage;
    Uint8 padding2;
    Uint8 padding3;
} SDL_GPUMultisampleState;
# 1876 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef struct SDL_GPUDepthStencilState
{
    SDL_GPUCompareOp compare_op;
    SDL_GPUStencilOpState back_stencil_state;
    SDL_GPUStencilOpState front_stencil_state;
    Uint8 compare_mask;
    Uint8 write_mask;
    bool enable_depth_test;
    bool enable_depth_write;
    bool enable_stencil_test;
    Uint8 padding1;
    Uint8 padding2;
    Uint8 padding3;
} SDL_GPUDepthStencilState;
# 1899 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef struct SDL_GPUColorTargetDescription
{
    SDL_GPUTextureFormat format;
    SDL_GPUColorTargetBlendState blend_state;
} SDL_GPUColorTargetDescription;
# 1915 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef struct SDL_GPUGraphicsPipelineTargetInfo
{
    const SDL_GPUColorTargetDescription *color_target_descriptions;
    Uint32 num_color_targets;
    SDL_GPUTextureFormat depth_stencil_format;
    bool has_depth_stencil_target;
    Uint8 padding1;
    Uint8 padding2;
    Uint8 padding3;
} SDL_GPUGraphicsPipelineTargetInfo;
# 1940 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef struct SDL_GPUGraphicsPipelineCreateInfo
{
    SDL_GPUShader *vertex_shader;
    SDL_GPUShader *fragment_shader;
    SDL_GPUVertexInputState vertex_input_state;
    SDL_GPUPrimitiveType primitive_type;
    SDL_GPURasterizerState rasterizer_state;
    SDL_GPUMultisampleState multisample_state;
    SDL_GPUDepthStencilState depth_stencil_state;
    SDL_GPUGraphicsPipelineTargetInfo target_info;

    SDL_PropertiesID props;
} SDL_GPUGraphicsPipelineCreateInfo;
# 1962 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef struct SDL_GPUComputePipelineCreateInfo
{
    size_t code_size;
    const Uint8 *code;
    const char *entrypoint;
    SDL_GPUShaderFormat format;
    Uint32 num_samplers;
    Uint32 num_readonly_storage_textures;
    Uint32 num_readonly_storage_buffers;
    Uint32 num_readwrite_storage_textures;
    Uint32 num_readwrite_storage_buffers;
    Uint32 num_uniform_buffers;
    Uint32 threadcount_x;
    Uint32 threadcount_y;
    Uint32 threadcount_z;

    SDL_PropertiesID props;
} SDL_GPUComputePipelineCreateInfo;
# 2017 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef struct SDL_GPUColorTargetInfo
{
    SDL_GPUTexture *texture;
    Uint32 mip_level;
    Uint32 layer_or_depth_plane;
    SDL_FColor clear_color;
    SDL_GPULoadOp load_op;
    SDL_GPUStoreOp store_op;
    SDL_GPUTexture *resolve_texture;
    Uint32 resolve_mip_level;
    Uint32 resolve_layer;
    bool cycle;
    bool cycle_resolve_texture;
    Uint8 padding1;
    Uint8 padding2;
} SDL_GPUColorTargetInfo;
# 2081 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef struct SDL_GPUDepthStencilTargetInfo
{
    SDL_GPUTexture *texture;
    float clear_depth;
    SDL_GPULoadOp load_op;
    SDL_GPUStoreOp store_op;
    SDL_GPULoadOp stencil_load_op;
    SDL_GPUStoreOp stencil_store_op;
    bool cycle;
    Uint8 clear_stencil;
    Uint8 mip_level;
    Uint8 layer;
} SDL_GPUDepthStencilTargetInfo;
# 2102 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef struct SDL_GPUBlitInfo {
    SDL_GPUBlitRegion source;
    SDL_GPUBlitRegion destination;
    SDL_GPULoadOp load_op;
    SDL_FColor clear_color;
    SDL_FlipMode flip_mode;
    SDL_GPUFilter filter;
    bool cycle;
    Uint8 padding1;
    Uint8 padding2;
    Uint8 padding3;
} SDL_GPUBlitInfo;
# 2125 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef struct SDL_GPUBufferBinding
{
    SDL_GPUBuffer *buffer;
    Uint32 offset;
} SDL_GPUBufferBinding;
# 2141 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef struct SDL_GPUTextureSamplerBinding
{
    SDL_GPUTexture *texture;
    SDL_GPUSampler *sampler;
} SDL_GPUTextureSamplerBinding;
# 2155 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef struct SDL_GPUStorageBufferReadWriteBinding
{
    SDL_GPUBuffer *buffer;
    bool cycle;
    Uint8 padding1;
    Uint8 padding2;
    Uint8 padding3;
} SDL_GPUStorageBufferReadWriteBinding;
# 2172 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef struct SDL_GPUStorageTextureReadWriteBinding
{
    SDL_GPUTexture *texture;
    Uint32 mip_level;
    Uint32 layer;
    bool cycle;
    Uint8 padding1;
    Uint8 padding2;
    Uint8 padding3;
} SDL_GPUStorageTextureReadWriteBinding;
# 2200 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GPUSupportsShaderFormats(
    SDL_GPUShaderFormat format_flags,
    const char *name);
# 2214 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GPUSupportsProperties(
    SDL_PropertiesID props);
# 2243 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) SDL_GPUDevice * SDL_CreateGPUDevice(
    SDL_GPUShaderFormat format_flags,
    bool debug_mode,
    const char *name);
# 2360 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) SDL_GPUDevice * SDL_CreateGPUDeviceWithProperties(
    SDL_PropertiesID props);
# 2416 "/usr/local/include/SDL3/SDL_gpu.h" 3
typedef struct SDL_GPUVulkanOptions
{
    Uint32 vulkan_api_version;
    void *feature_list;
 void *vulkan_10_physical_device_features;
 Uint32 device_extension_count;
 const char **device_extension_names;
 Uint32 instance_extension_count;
 const char **instance_extension_names;
} SDL_GPUVulkanOptions;
# 2436 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) void SDL_DestroyGPUDevice(SDL_GPUDevice *device);
# 2447 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) int SDL_GetNumGPUDrivers(void);
# 2466 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) const char * SDL_GetGPUDriver(int index);
# 2476 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) const char * SDL_GetGPUDeviceDriver(SDL_GPUDevice *device);
# 2487 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) SDL_GPUShaderFormat SDL_GetGPUShaderFormats(SDL_GPUDevice *device);
# 2591 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) SDL_PropertiesID SDL_GetGPUDeviceProperties(SDL_GPUDevice *device);
# 2646 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) SDL_GPUComputePipeline * SDL_CreateGPUComputePipeline(
    SDL_GPUDevice *device,
    const SDL_GPUComputePipelineCreateInfo *createinfo);
# 2673 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) SDL_GPUGraphicsPipeline * SDL_CreateGPUGraphicsPipeline(
    SDL_GPUDevice *device,
    const SDL_GPUGraphicsPipelineCreateInfo *createinfo);
# 2700 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) SDL_GPUSampler * SDL_CreateGPUSampler(
    SDL_GPUDevice *device,
    const SDL_GPUSamplerCreateInfo *createinfo);
# 2779 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) SDL_GPUShader * SDL_CreateGPUShader(
    SDL_GPUDevice *device,
    const SDL_GPUShaderCreateInfo *createinfo);
# 2843 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) SDL_GPUTexture * SDL_CreateGPUTexture(
    SDL_GPUDevice *device,
    const SDL_GPUTextureCreateInfo *createinfo);
# 2899 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) SDL_GPUBuffer * SDL_CreateGPUBuffer(
    SDL_GPUDevice *device,
    const SDL_GPUBufferCreateInfo *createinfo);
# 2932 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) SDL_GPUTransferBuffer * SDL_CreateGPUTransferBuffer(
    SDL_GPUDevice *device,
    const SDL_GPUTransferBufferCreateInfo *createinfo);
# 2957 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) void SDL_SetGPUBufferName(
    SDL_GPUDevice *device,
    SDL_GPUBuffer *buffer,
    const char *text);
# 2980 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) void SDL_SetGPUTextureName(
    SDL_GPUDevice *device,
    SDL_GPUTexture *texture,
    const char *text);
# 3001 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) void SDL_InsertGPUDebugLabel(
    SDL_GPUCommandBuffer *command_buffer,
    const char *text);
# 3031 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) void SDL_PushGPUDebugGroup(
    SDL_GPUCommandBuffer *command_buffer,
    const char *name);
# 3049 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) void SDL_PopGPUDebugGroup(
    SDL_GPUCommandBuffer *command_buffer);
# 3064 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) void SDL_ReleaseGPUTexture(
    SDL_GPUDevice *device,
    SDL_GPUTexture *texture);
# 3078 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) void SDL_ReleaseGPUSampler(
    SDL_GPUDevice *device,
    SDL_GPUSampler *sampler);
# 3092 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) void SDL_ReleaseGPUBuffer(
    SDL_GPUDevice *device,
    SDL_GPUBuffer *buffer);
# 3106 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) void SDL_ReleaseGPUTransferBuffer(
    SDL_GPUDevice *device,
    SDL_GPUTransferBuffer *transfer_buffer);
# 3120 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) void SDL_ReleaseGPUComputePipeline(
    SDL_GPUDevice *device,
    SDL_GPUComputePipeline *compute_pipeline);
# 3134 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) void SDL_ReleaseGPUShader(
    SDL_GPUDevice *device,
    SDL_GPUShader *shader);
# 3148 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) void SDL_ReleaseGPUGraphicsPipeline(
    SDL_GPUDevice *device,
    SDL_GPUGraphicsPipeline *graphics_pipeline);
# 3176 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) SDL_GPUCommandBuffer * SDL_AcquireGPUCommandBuffer(
    SDL_GPUDevice *device);
# 3200 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) void SDL_PushGPUVertexUniformData(
    SDL_GPUCommandBuffer *command_buffer,
    Uint32 slot_index,
    const void *data,
    Uint32 length);
# 3222 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) void SDL_PushGPUFragmentUniformData(
    SDL_GPUCommandBuffer *command_buffer,
    Uint32 slot_index,
    const void *data,
    Uint32 length);
# 3244 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) void SDL_PushGPUComputeUniformData(
    SDL_GPUCommandBuffer *command_buffer,
    Uint32 slot_index,
    const void *data,
    Uint32 length);
# 3285 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) SDL_GPURenderPass * SDL_BeginGPURenderPass(
    SDL_GPUCommandBuffer *command_buffer,
    const SDL_GPUColorTargetInfo *color_target_infos,
    Uint32 num_color_targets,
    const SDL_GPUDepthStencilTargetInfo *depth_stencil_target_info);
# 3301 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) void SDL_BindGPUGraphicsPipeline(
    SDL_GPURenderPass *render_pass,
    SDL_GPUGraphicsPipeline *graphics_pipeline);
# 3313 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) void SDL_SetGPUViewport(
    SDL_GPURenderPass *render_pass,
    const SDL_GPUViewport *viewport);
# 3325 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) void SDL_SetGPUScissor(
    SDL_GPURenderPass *render_pass,
    const SDL_Rect *scissor);
# 3340 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) void SDL_SetGPUBlendConstants(
    SDL_GPURenderPass *render_pass,
    SDL_FColor blend_constants);
# 3352 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) void SDL_SetGPUStencilReference(
    SDL_GPURenderPass *render_pass,
    Uint8 reference);
# 3368 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) void SDL_BindGPUVertexBuffers(
    SDL_GPURenderPass *render_pass,
    Uint32 first_slot,
    const SDL_GPUBufferBinding *bindings,
    Uint32 num_bindings);
# 3385 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) void SDL_BindGPUIndexBuffer(
    SDL_GPURenderPass *render_pass,
    const SDL_GPUBufferBinding *binding,
    SDL_GPUIndexElementSize index_element_size);
# 3409 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) void SDL_BindGPUVertexSamplers(
    SDL_GPURenderPass *render_pass,
    Uint32 first_slot,
    const SDL_GPUTextureSamplerBinding *texture_sampler_bindings,
    Uint32 num_bindings);
# 3433 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) void SDL_BindGPUVertexStorageTextures(
    SDL_GPURenderPass *render_pass,
    Uint32 first_slot,
    SDL_GPUTexture *const *storage_textures,
    Uint32 num_bindings);
# 3457 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) void SDL_BindGPUVertexStorageBuffers(
    SDL_GPURenderPass *render_pass,
    Uint32 first_slot,
    SDL_GPUBuffer *const *storage_buffers,
    Uint32 num_bindings);
# 3482 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) void SDL_BindGPUFragmentSamplers(
    SDL_GPURenderPass *render_pass,
    Uint32 first_slot,
    const SDL_GPUTextureSamplerBinding *texture_sampler_bindings,
    Uint32 num_bindings);
# 3506 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) void SDL_BindGPUFragmentStorageTextures(
    SDL_GPURenderPass *render_pass,
    Uint32 first_slot,
    SDL_GPUTexture *const *storage_textures,
    Uint32 num_bindings);
# 3530 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) void SDL_BindGPUFragmentStorageBuffers(
    SDL_GPURenderPass *render_pass,
    Uint32 first_slot,
    SDL_GPUBuffer *const *storage_buffers,
    Uint32 num_bindings);
# 3561 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) void SDL_DrawGPUIndexedPrimitives(
    SDL_GPURenderPass *render_pass,
    Uint32 num_indices,
    Uint32 num_instances,
    Uint32 first_index,
    Sint32 vertex_offset,
    Uint32 first_instance);
# 3589 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) void SDL_DrawGPUPrimitives(
    SDL_GPURenderPass *render_pass,
    Uint32 num_vertices,
    Uint32 num_instances,
    Uint32 first_vertex,
    Uint32 first_instance);
# 3612 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) void SDL_DrawGPUPrimitivesIndirect(
    SDL_GPURenderPass *render_pass,
    SDL_GPUBuffer *buffer,
    Uint32 offset,
    Uint32 draw_count);
# 3634 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) void SDL_DrawGPUIndexedPrimitivesIndirect(
    SDL_GPURenderPass *render_pass,
    SDL_GPUBuffer *buffer,
    Uint32 offset,
    Uint32 draw_count);
# 3650 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) void SDL_EndGPURenderPass(
    SDL_GPURenderPass *render_pass);
# 3692 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) SDL_GPUComputePass * SDL_BeginGPUComputePass(
    SDL_GPUCommandBuffer *command_buffer,
    const SDL_GPUStorageTextureReadWriteBinding *storage_texture_bindings,
    Uint32 num_storage_texture_bindings,
    const SDL_GPUStorageBufferReadWriteBinding *storage_buffer_bindings,
    Uint32 num_storage_buffer_bindings);
# 3707 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) void SDL_BindGPUComputePipeline(
    SDL_GPUComputePass *compute_pass,
    SDL_GPUComputePipeline *compute_pipeline);
# 3730 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) void SDL_BindGPUComputeSamplers(
    SDL_GPUComputePass *compute_pass,
    Uint32 first_slot,
    const SDL_GPUTextureSamplerBinding *texture_sampler_bindings,
    Uint32 num_bindings);
# 3754 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) void SDL_BindGPUComputeStorageTextures(
    SDL_GPUComputePass *compute_pass,
    Uint32 first_slot,
    SDL_GPUTexture *const *storage_textures,
    Uint32 num_bindings);
# 3778 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) void SDL_BindGPUComputeStorageBuffers(
    SDL_GPUComputePass *compute_pass,
    Uint32 first_slot,
    SDL_GPUBuffer *const *storage_buffers,
    Uint32 num_bindings);
# 3804 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) void SDL_DispatchGPUCompute(
    SDL_GPUComputePass *compute_pass,
    Uint32 groupcount_x,
    Uint32 groupcount_y,
    Uint32 groupcount_z);
# 3828 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) void SDL_DispatchGPUComputeIndirect(
    SDL_GPUComputePass *compute_pass,
    SDL_GPUBuffer *buffer,
    Uint32 offset);
# 3843 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) void SDL_EndGPUComputePass(
    SDL_GPUComputePass *compute_pass);
# 3863 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) void * SDL_MapGPUTransferBuffer(
    SDL_GPUDevice *device,
    SDL_GPUTransferBuffer *transfer_buffer,
    bool cycle);
# 3876 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) void SDL_UnmapGPUTransferBuffer(
    SDL_GPUDevice *device,
    SDL_GPUTransferBuffer *transfer_buffer);
# 3896 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) SDL_GPUCopyPass * SDL_BeginGPUCopyPass(
    SDL_GPUCommandBuffer *command_buffer);
# 3916 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) void SDL_UploadToGPUTexture(
    SDL_GPUCopyPass *copy_pass,
    const SDL_GPUTextureTransferInfo *source,
    const SDL_GPUTextureRegion *destination,
    bool cycle);
# 3936 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) void SDL_UploadToGPUBuffer(
    SDL_GPUCopyPass *copy_pass,
    const SDL_GPUTransferBufferLocation *source,
    const SDL_GPUBufferRegion *destination,
    bool cycle);
# 3963 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) void SDL_CopyGPUTextureToTexture(
    SDL_GPUCopyPass *copy_pass,
    const SDL_GPUTextureLocation *source,
    const SDL_GPUTextureLocation *destination,
    Uint32 w,
    Uint32 h,
    Uint32 d,
    bool cycle);
# 3987 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) void SDL_CopyGPUBufferToBuffer(
    SDL_GPUCopyPass *copy_pass,
    const SDL_GPUBufferLocation *source,
    const SDL_GPUBufferLocation *destination,
    Uint32 size,
    bool cycle);
# 4007 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) void SDL_DownloadFromGPUTexture(
    SDL_GPUCopyPass *copy_pass,
    const SDL_GPUTextureRegion *source,
    const SDL_GPUTextureTransferInfo *destination);
# 4024 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) void SDL_DownloadFromGPUBuffer(
    SDL_GPUCopyPass *copy_pass,
    const SDL_GPUBufferRegion *source,
    const SDL_GPUTransferBufferLocation *destination);
# 4036 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) void SDL_EndGPUCopyPass(
    SDL_GPUCopyPass *copy_pass);
# 4049 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) void SDL_GenerateMipmapsForGPUTexture(
    SDL_GPUCommandBuffer *command_buffer,
    SDL_GPUTexture *texture);
# 4063 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) void SDL_BlitGPUTexture(
    SDL_GPUCommandBuffer *command_buffer,
    const SDL_GPUBlitInfo *info);
# 4083 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_WindowSupportsGPUSwapchainComposition(
    SDL_GPUDevice *device,
    SDL_Window *window,
    SDL_GPUSwapchainComposition swapchain_composition);
# 4102 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_WindowSupportsGPUPresentMode(
    SDL_GPUDevice *device,
    SDL_Window *window,
    SDL_GPUPresentMode present_mode);
# 4134 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_ClaimWindowForGPUDevice(
    SDL_GPUDevice *device,
    SDL_Window *window);
# 4148 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) void SDL_ReleaseWindowFromGPUDevice(
    SDL_GPUDevice *device,
    SDL_Window *window);
# 4175 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetGPUSwapchainParameters(
    SDL_GPUDevice *device,
    SDL_Window *window,
    SDL_GPUSwapchainComposition swapchain_composition,
    SDL_GPUPresentMode present_mode);
# 4206 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetGPUAllowedFramesInFlight(
    SDL_GPUDevice *device,
    Uint32 allowed_frames_in_flight);
# 4221 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) SDL_GPUTextureFormat SDL_GetGPUSwapchainTextureFormat(
    SDL_GPUDevice *device,
    SDL_Window *window);
# 4273 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_AcquireGPUSwapchainTexture(
    SDL_GPUCommandBuffer *command_buffer,
    SDL_Window *window,
    SDL_GPUTexture **swapchain_texture,
    Uint32 *swapchain_texture_width,
    Uint32 *swapchain_texture_height);
# 4297 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_WaitForGPUSwapchain(
    SDL_GPUDevice *device,
    SDL_Window *window);
# 4343 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_WaitAndAcquireGPUSwapchainTexture(
    SDL_GPUCommandBuffer *command_buffer,
    SDL_Window *window,
    SDL_GPUTexture **swapchain_texture,
    Uint32 *swapchain_texture_width,
    Uint32 *swapchain_texture_height);
# 4371 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SubmitGPUCommandBuffer(
    SDL_GPUCommandBuffer *command_buffer);
# 4398 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) SDL_GPUFence * SDL_SubmitGPUCommandBufferAndAcquireFence(
    SDL_GPUCommandBuffer *command_buffer);
# 4423 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_CancelGPUCommandBuffer(
    SDL_GPUCommandBuffer *command_buffer);
# 4437 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_WaitForGPUIdle(
    SDL_GPUDevice *device);
# 4456 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_WaitForGPUFences(
    SDL_GPUDevice *device,
    bool wait_all,
    SDL_GPUFence *const *fences,
    Uint32 num_fences);
# 4473 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_QueryGPUFence(
    SDL_GPUDevice *device,
    SDL_GPUFence *fence);
# 4489 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) void SDL_ReleaseGPUFence(
    SDL_GPUDevice *device,
    SDL_GPUFence *fence);
# 4505 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) Uint32 SDL_GPUTextureFormatTexelBlockSize(
    SDL_GPUTextureFormat format);
# 4520 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GPUTextureSupportsFormat(
    SDL_GPUDevice *device,
    SDL_GPUTextureFormat format,
    SDL_GPUTextureType type,
    SDL_GPUTextureUsageFlags usage);
# 4536 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GPUTextureSupportsSampleCount(
    SDL_GPUDevice *device,
    SDL_GPUTextureFormat format,
    SDL_GPUSampleCount sample_count);
# 4552 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) Uint32 SDL_CalculateGPUTextureFormatSize(
    SDL_GPUTextureFormat format,
    Uint32 width,
    Uint32 height,
    Uint32 depth_or_layer_count);
# 4567 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) SDL_PixelFormat SDL_GetPixelFormatFromGPUTextureFormat(SDL_GPUTextureFormat format);
# 4579 "/usr/local/include/SDL3/SDL_gpu.h" 3
extern __attribute__ ((visibility("default"))) SDL_GPUTextureFormat SDL_GetGPUTextureFormatFromPixelFormat(SDL_PixelFormat format);
# 4616 "/usr/local/include/SDL3/SDL_gpu.h" 3
}

# 1 "/usr/local/include/SDL3/SDL_close_code.h" 1 3
# 4619 "/usr/local/include/SDL3/SDL_gpu.h" 2 3
# 52 "/usr/local/include/SDL3/SDL.h" 2 3

# 1 "/usr/local/include/SDL3/SDL_haptic.h" 1 3
# 124 "/usr/local/include/SDL3/SDL_haptic.h" 3
# 1 "/usr/local/include/SDL3/SDL_begin_code.h" 1 3
# 125 "/usr/local/include/SDL3/SDL_haptic.h" 2 3


extern "C" {
# 150 "/usr/local/include/SDL3/SDL_haptic.h" 3
typedef struct SDL_Haptic SDL_Haptic;
# 181 "/usr/local/include/SDL3/SDL_haptic.h" 3
typedef Uint16 SDL_HapticEffectType;
# 407 "/usr/local/include/SDL3/SDL_haptic.h" 3
typedef Uint8 SDL_HapticDirectionType;
# 460 "/usr/local/include/SDL3/SDL_haptic.h" 3
typedef int SDL_HapticEffectID;
# 566 "/usr/local/include/SDL3/SDL_haptic.h" 3
typedef struct SDL_HapticDirection
{
    SDL_HapticDirectionType type;
    Sint32 dir[3];
} SDL_HapticDirection;
# 586 "/usr/local/include/SDL3/SDL_haptic.h" 3
typedef struct SDL_HapticConstant
{

    SDL_HapticEffectType type;
    SDL_HapticDirection direction;


    Uint32 length;
    Uint16 delay;


    Uint16 button;
    Uint16 interval;


    Sint16 level;


    Uint16 attack_length;
    Uint16 attack_level;
    Uint16 fade_length;
    Uint16 fade_level;
} SDL_HapticConstant;
# 672 "/usr/local/include/SDL3/SDL_haptic.h" 3
typedef struct SDL_HapticPeriodic
{

    SDL_HapticEffectType type;


    SDL_HapticDirection direction;


    Uint32 length;
    Uint16 delay;


    Uint16 button;
    Uint16 interval;


    Uint16 period;
    Sint16 magnitude;
    Sint16 offset;
    Uint16 phase;


    Uint16 attack_length;
    Uint16 attack_level;
    Uint16 fade_length;
    Uint16 fade_level;
} SDL_HapticPeriodic;
# 728 "/usr/local/include/SDL3/SDL_haptic.h" 3
typedef struct SDL_HapticCondition
{

    SDL_HapticEffectType type;

    SDL_HapticDirection direction;


    Uint32 length;
    Uint16 delay;


    Uint16 button;
    Uint16 interval;


    Uint16 right_sat[3];
    Uint16 left_sat[3];
    Sint16 right_coeff[3];
    Sint16 left_coeff[3];
    Uint16 deadband[3];
    Sint16 center[3];
} SDL_HapticCondition;
# 767 "/usr/local/include/SDL3/SDL_haptic.h" 3
typedef struct SDL_HapticRamp
{

    SDL_HapticEffectType type;
    SDL_HapticDirection direction;


    Uint32 length;
    Uint16 delay;


    Uint16 button;
    Uint16 interval;


    Sint16 start;
    Sint16 end;


    Uint16 attack_length;
    Uint16 attack_level;
    Uint16 fade_length;
    Uint16 fade_level;
} SDL_HapticRamp;
# 806 "/usr/local/include/SDL3/SDL_haptic.h" 3
typedef struct SDL_HapticLeftRight
{

    SDL_HapticEffectType type;


    Uint32 length;


    Uint16 large_magnitude;
    Uint16 small_magnitude;
} SDL_HapticLeftRight;
# 836 "/usr/local/include/SDL3/SDL_haptic.h" 3
typedef struct SDL_HapticCustom
{

    SDL_HapticEffectType type;
    SDL_HapticDirection direction;


    Uint32 length;
    Uint16 delay;


    Uint16 button;
    Uint16 interval;


    Uint8 channels;
    Uint16 period;
    Uint16 samples;
    Uint16 *data;


    Uint16 attack_length;
    Uint16 attack_level;
    Uint16 fade_length;
    Uint16 fade_level;
} SDL_HapticCustom;
# 935 "/usr/local/include/SDL3/SDL_haptic.h" 3
typedef union SDL_HapticEffect
{

    SDL_HapticEffectType type;
    SDL_HapticConstant constant;
    SDL_HapticPeriodic periodic;
    SDL_HapticCondition condition;
    SDL_HapticRamp ramp;
    SDL_HapticLeftRight leftright;
    SDL_HapticCustom custom;
} SDL_HapticEffect;
# 957 "/usr/local/include/SDL3/SDL_haptic.h" 3
typedef Uint32 SDL_HapticID;
# 975 "/usr/local/include/SDL3/SDL_haptic.h" 3
extern __attribute__ ((visibility("default"))) SDL_HapticID * SDL_GetHaptics(int *count);
# 992 "/usr/local/include/SDL3/SDL_haptic.h" 3
extern __attribute__ ((visibility("default"))) const char * SDL_GetHapticNameForID(SDL_HapticID instance_id);
# 1017 "/usr/local/include/SDL3/SDL_haptic.h" 3
extern __attribute__ ((visibility("default"))) SDL_Haptic * SDL_OpenHaptic(SDL_HapticID instance_id);
# 1029 "/usr/local/include/SDL3/SDL_haptic.h" 3
extern __attribute__ ((visibility("default"))) SDL_Haptic * SDL_GetHapticFromID(SDL_HapticID instance_id);
# 1040 "/usr/local/include/SDL3/SDL_haptic.h" 3
extern __attribute__ ((visibility("default"))) SDL_HapticID SDL_GetHapticID(SDL_Haptic *haptic);
# 1054 "/usr/local/include/SDL3/SDL_haptic.h" 3
extern __attribute__ ((visibility("default"))) const char * SDL_GetHapticName(SDL_Haptic *haptic);
# 1065 "/usr/local/include/SDL3/SDL_haptic.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_IsMouseHaptic(void);
# 1078 "/usr/local/include/SDL3/SDL_haptic.h" 3
extern __attribute__ ((visibility("default"))) SDL_Haptic * SDL_OpenHapticFromMouse(void);
# 1090 "/usr/local/include/SDL3/SDL_haptic.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_IsJoystickHaptic(SDL_Joystick *joystick);
# 1112 "/usr/local/include/SDL3/SDL_haptic.h" 3
extern __attribute__ ((visibility("default"))) SDL_Haptic * SDL_OpenHapticFromJoystick(SDL_Joystick *joystick);
# 1123 "/usr/local/include/SDL3/SDL_haptic.h" 3
extern __attribute__ ((visibility("default"))) void SDL_CloseHaptic(SDL_Haptic *haptic);
# 1141 "/usr/local/include/SDL3/SDL_haptic.h" 3
extern __attribute__ ((visibility("default"))) int SDL_GetMaxHapticEffects(SDL_Haptic *haptic);
# 1157 "/usr/local/include/SDL3/SDL_haptic.h" 3
extern __attribute__ ((visibility("default"))) int SDL_GetMaxHapticEffectsPlaying(SDL_Haptic *haptic);
# 1171 "/usr/local/include/SDL3/SDL_haptic.h" 3
extern __attribute__ ((visibility("default"))) Uint32 SDL_GetHapticFeatures(SDL_Haptic *haptic);
# 1185 "/usr/local/include/SDL3/SDL_haptic.h" 3
extern __attribute__ ((visibility("default"))) int SDL_GetNumHapticAxes(SDL_Haptic *haptic);
# 1199 "/usr/local/include/SDL3/SDL_haptic.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_HapticEffectSupported(SDL_Haptic *haptic, const SDL_HapticEffect *effect);
# 1216 "/usr/local/include/SDL3/SDL_haptic.h" 3
extern __attribute__ ((visibility("default"))) SDL_HapticEffectID SDL_CreateHapticEffect(SDL_Haptic *haptic, const SDL_HapticEffect *effect);
# 1238 "/usr/local/include/SDL3/SDL_haptic.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_UpdateHapticEffect(SDL_Haptic *haptic, SDL_HapticEffectID effect, const SDL_HapticEffect *data);
# 1262 "/usr/local/include/SDL3/SDL_haptic.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_RunHapticEffect(SDL_Haptic *haptic, SDL_HapticEffectID effect, Uint32 iterations);
# 1277 "/usr/local/include/SDL3/SDL_haptic.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_StopHapticEffect(SDL_Haptic *haptic, SDL_HapticEffectID effect);
# 1292 "/usr/local/include/SDL3/SDL_haptic.h" 3
extern __attribute__ ((visibility("default"))) void SDL_DestroyHapticEffect(SDL_Haptic *haptic, SDL_HapticEffectID effect);
# 1308 "/usr/local/include/SDL3/SDL_haptic.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetHapticEffectStatus(SDL_Haptic *haptic, SDL_HapticEffectID effect);
# 1330 "/usr/local/include/SDL3/SDL_haptic.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetHapticGain(SDL_Haptic *haptic, int gain);
# 1349 "/usr/local/include/SDL3/SDL_haptic.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetHapticAutocenter(SDL_Haptic *haptic, int autocenter);
# 1368 "/usr/local/include/SDL3/SDL_haptic.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_PauseHaptic(SDL_Haptic *haptic);
# 1383 "/usr/local/include/SDL3/SDL_haptic.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_ResumeHaptic(SDL_Haptic *haptic);
# 1397 "/usr/local/include/SDL3/SDL_haptic.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_StopHapticEffects(SDL_Haptic *haptic);
# 1409 "/usr/local/include/SDL3/SDL_haptic.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_HapticRumbleSupported(SDL_Haptic *haptic);
# 1424 "/usr/local/include/SDL3/SDL_haptic.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_InitHapticRumble(SDL_Haptic *haptic);
# 1440 "/usr/local/include/SDL3/SDL_haptic.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_PlayHapticRumble(SDL_Haptic *haptic, float strength, Uint32 length);
# 1453 "/usr/local/include/SDL3/SDL_haptic.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_StopHapticRumble(SDL_Haptic *haptic);



}

# 1 "/usr/local/include/SDL3/SDL_close_code.h" 1 3
# 1460 "/usr/local/include/SDL3/SDL_haptic.h" 2 3
# 54 "/usr/local/include/SDL3/SDL.h" 2 3
# 1 "/usr/local/include/SDL3/SDL_hidapi.h" 1 3
# 60 "/usr/local/include/SDL3/SDL_hidapi.h" 3
# 1 "/usr/local/include/SDL3/SDL_begin_code.h" 1 3
# 61 "/usr/local/include/SDL3/SDL_hidapi.h" 2 3


extern "C" {







typedef struct SDL_hid_device SDL_hid_device;






typedef enum SDL_hid_bus_type {

    SDL_HID_API_BUS_UNKNOWN = 0x00,




    SDL_HID_API_BUS_USB = 0x01,






    SDL_HID_API_BUS_BLUETOOTH = 0x02,




    SDL_HID_API_BUS_I2C = 0x03,




    SDL_HID_API_BUS_SPI = 0x04

} SDL_hid_bus_type;
# 113 "/usr/local/include/SDL3/SDL_hidapi.h" 3
typedef struct SDL_hid_device_info
{

    char *path;

    unsigned short vendor_id;

    unsigned short product_id;

    wchar_t *serial_number;


    unsigned short release_number;

    wchar_t *manufacturer_string;

    wchar_t *product_string;


    unsigned short usage_page;


    unsigned short usage;






    int interface_number;



    int interface_class;
    int interface_subclass;
    int interface_protocol;


    SDL_hid_bus_type bus_type;


    struct SDL_hid_device_info *next;

} SDL_hid_device_info;
# 177 "/usr/local/include/SDL3/SDL_hidapi.h" 3
extern __attribute__ ((visibility("default"))) int SDL_hid_init(void);
# 192 "/usr/local/include/SDL3/SDL_hidapi.h" 3
extern __attribute__ ((visibility("default"))) int SDL_hid_exit(void);
# 213 "/usr/local/include/SDL3/SDL_hidapi.h" 3
extern __attribute__ ((visibility("default"))) Uint32 SDL_hid_device_change_count(void);
# 241 "/usr/local/include/SDL3/SDL_hidapi.h" 3
extern __attribute__ ((visibility("default"))) SDL_hid_device_info * SDL_hid_enumerate(unsigned short vendor_id, unsigned short product_id);
# 253 "/usr/local/include/SDL3/SDL_hidapi.h" 3
extern __attribute__ ((visibility("default"))) void SDL_hid_free_enumeration(SDL_hid_device_info *devs);
# 271 "/usr/local/include/SDL3/SDL_hidapi.h" 3
extern __attribute__ ((visibility("default"))) SDL_hid_device * SDL_hid_open(unsigned short vendor_id, unsigned short product_id, const wchar_t *serial_number);
# 285 "/usr/local/include/SDL3/SDL_hidapi.h" 3
extern __attribute__ ((visibility("default"))) SDL_hid_device * SDL_hid_open_path(const char *path);
# 301 "/usr/local/include/SDL3/SDL_hidapi.h" 3
extern __attribute__ ((visibility("default"))) SDL_PropertiesID SDL_hid_get_properties(SDL_hid_device *dev);
# 330 "/usr/local/include/SDL3/SDL_hidapi.h" 3
extern __attribute__ ((visibility("default"))) int SDL_hid_write(SDL_hid_device *dev, const unsigned char *data, size_t length);
# 351 "/usr/local/include/SDL3/SDL_hidapi.h" 3
extern __attribute__ ((visibility("default"))) int SDL_hid_read_timeout(SDL_hid_device *dev, unsigned char *data, size_t length, int milliseconds);
# 372 "/usr/local/include/SDL3/SDL_hidapi.h" 3
extern __attribute__ ((visibility("default"))) int SDL_hid_read(SDL_hid_device *dev, unsigned char *data, size_t length);
# 391 "/usr/local/include/SDL3/SDL_hidapi.h" 3
extern __attribute__ ((visibility("default"))) int SDL_hid_set_nonblocking(SDL_hid_device *dev, int nonblock);
# 416 "/usr/local/include/SDL3/SDL_hidapi.h" 3
extern __attribute__ ((visibility("default"))) int SDL_hid_send_feature_report(SDL_hid_device *dev, const unsigned char *data, size_t length);
# 439 "/usr/local/include/SDL3/SDL_hidapi.h" 3
extern __attribute__ ((visibility("default"))) int SDL_hid_get_feature_report(SDL_hid_device *dev, unsigned char *data, size_t length);
# 462 "/usr/local/include/SDL3/SDL_hidapi.h" 3
extern __attribute__ ((visibility("default"))) int SDL_hid_get_input_report(SDL_hid_device *dev, unsigned char *data, size_t length);
# 473 "/usr/local/include/SDL3/SDL_hidapi.h" 3
extern __attribute__ ((visibility("default"))) int SDL_hid_close(SDL_hid_device *dev);
# 486 "/usr/local/include/SDL3/SDL_hidapi.h" 3
extern __attribute__ ((visibility("default"))) int SDL_hid_get_manufacturer_string(SDL_hid_device *dev, wchar_t *string, size_t maxlen);
# 499 "/usr/local/include/SDL3/SDL_hidapi.h" 3
extern __attribute__ ((visibility("default"))) int SDL_hid_get_product_string(SDL_hid_device *dev, wchar_t *string, size_t maxlen);
# 512 "/usr/local/include/SDL3/SDL_hidapi.h" 3
extern __attribute__ ((visibility("default"))) int SDL_hid_get_serial_number_string(SDL_hid_device *dev, wchar_t *string, size_t maxlen);
# 526 "/usr/local/include/SDL3/SDL_hidapi.h" 3
extern __attribute__ ((visibility("default"))) int SDL_hid_get_indexed_string(SDL_hid_device *dev, int string_index, wchar_t *string, size_t maxlen);
# 538 "/usr/local/include/SDL3/SDL_hidapi.h" 3
extern __attribute__ ((visibility("default"))) SDL_hid_device_info * SDL_hid_get_device_info(SDL_hid_device *dev);
# 554 "/usr/local/include/SDL3/SDL_hidapi.h" 3
extern __attribute__ ((visibility("default"))) int SDL_hid_get_report_descriptor(SDL_hid_device *dev, unsigned char *buf, size_t buf_size);
# 563 "/usr/local/include/SDL3/SDL_hidapi.h" 3
extern __attribute__ ((visibility("default"))) void SDL_hid_ble_scan(bool active);



}

# 1 "/usr/local/include/SDL3/SDL_close_code.h" 1 3
# 570 "/usr/local/include/SDL3/SDL_hidapi.h" 2 3
# 55 "/usr/local/include/SDL3/SDL.h" 2 3
# 1 "/usr/local/include/SDL3/SDL_hints.h" 1 3
# 43 "/usr/local/include/SDL3/SDL_hints.h" 3
# 1 "/usr/local/include/SDL3/SDL_begin_code.h" 1 3
# 44 "/usr/local/include/SDL3/SDL_hints.h" 2 3


extern "C" {
# 4762 "/usr/local/include/SDL3/SDL_hints.h" 3
typedef enum SDL_HintPriority
{
    SDL_HINT_DEFAULT,
    SDL_HINT_NORMAL,
    SDL_HINT_OVERRIDE
} SDL_HintPriority;
# 4790 "/usr/local/include/SDL3/SDL_hints.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetHintWithPriority(const char *name, const char *value, SDL_HintPriority priority);
# 4812 "/usr/local/include/SDL3/SDL_hints.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetHint(const char *name, const char *value);
# 4832 "/usr/local/include/SDL3/SDL_hints.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_ResetHint(const char *name);
# 4847 "/usr/local/include/SDL3/SDL_hints.h" 3
extern __attribute__ ((visibility("default"))) void SDL_ResetHints(void);
# 4862 "/usr/local/include/SDL3/SDL_hints.h" 3
extern __attribute__ ((visibility("default"))) const char * SDL_GetHint(const char *name);
# 4879 "/usr/local/include/SDL3/SDL_hints.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetHintBoolean(const char *name, bool default_value);
# 4901 "/usr/local/include/SDL3/SDL_hints.h" 3
typedef void( *SDL_HintCallback)(void *userdata, const char *name, const char *oldValue, const char *newValue);
# 4922 "/usr/local/include/SDL3/SDL_hints.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_AddHintCallback(const char *name, SDL_HintCallback callback, void *userdata);
# 4938 "/usr/local/include/SDL3/SDL_hints.h" 3
extern __attribute__ ((visibility("default"))) void SDL_RemoveHintCallback(const char *name,
                                                        SDL_HintCallback callback,
                                                        void *userdata);



}

# 1 "/usr/local/include/SDL3/SDL_close_code.h" 1 3
# 4947 "/usr/local/include/SDL3/SDL_hints.h" 2 3
# 56 "/usr/local/include/SDL3/SDL.h" 2 3
# 1 "/usr/local/include/SDL3/SDL_init.h" 1 3
# 56 "/usr/local/include/SDL3/SDL_init.h" 3
# 1 "/usr/local/include/SDL3/SDL_begin_code.h" 1 3
# 57 "/usr/local/include/SDL3/SDL_init.h" 2 3


extern "C" {
# 78 "/usr/local/include/SDL3/SDL_init.h" 3
typedef Uint32 SDL_InitFlags;
# 109 "/usr/local/include/SDL3/SDL_init.h" 3
typedef enum SDL_AppResult
{
    SDL_APP_CONTINUE,
    SDL_APP_SUCCESS,
    SDL_APP_FAILURE
} SDL_AppResult;
# 133 "/usr/local/include/SDL3/SDL_init.h" 3
typedef SDL_AppResult ( *SDL_AppInit_func)(void **appstate, int argc, char *argv[]);
# 148 "/usr/local/include/SDL3/SDL_init.h" 3
typedef SDL_AppResult ( *SDL_AppIterate_func)(void *appstate);
# 164 "/usr/local/include/SDL3/SDL_init.h" 3
typedef SDL_AppResult ( *SDL_AppEvent_func)(void *appstate, SDL_Event *event);
# 178 "/usr/local/include/SDL3/SDL_init.h" 3
typedef void ( *SDL_AppQuit_func)(void *appstate, SDL_AppResult result);
# 236 "/usr/local/include/SDL3/SDL_init.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_Init(SDL_InitFlags flags);
# 253 "/usr/local/include/SDL3/SDL_init.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_InitSubSystem(SDL_InitFlags flags);
# 268 "/usr/local/include/SDL3/SDL_init.h" 3
extern __attribute__ ((visibility("default"))) void SDL_QuitSubSystem(SDL_InitFlags flags);
# 282 "/usr/local/include/SDL3/SDL_init.h" 3
extern __attribute__ ((visibility("default"))) SDL_InitFlags SDL_WasInit(SDL_InitFlags flags);
# 300 "/usr/local/include/SDL3/SDL_init.h" 3
extern __attribute__ ((visibility("default"))) void SDL_Quit(void);
# 320 "/usr/local/include/SDL3/SDL_init.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_IsMainThread(void);
# 331 "/usr/local/include/SDL3/SDL_init.h" 3
typedef void ( *SDL_MainThreadCallback)(void *userdata);
# 357 "/usr/local/include/SDL3/SDL_init.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_RunOnMainThread(SDL_MainThreadCallback callback, void *userdata, bool wait_complete);
# 395 "/usr/local/include/SDL3/SDL_init.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetAppMetadata(const char *appname, const char *appversion, const char *appidentifier);
# 458 "/usr/local/include/SDL3/SDL_init.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetAppMetadataProperty(const char *name, const char *value);
# 489 "/usr/local/include/SDL3/SDL_init.h" 3
extern __attribute__ ((visibility("default"))) const char * SDL_GetAppMetadataProperty(const char *name);



}

# 1 "/usr/local/include/SDL3/SDL_close_code.h" 1 3
# 496 "/usr/local/include/SDL3/SDL_init.h" 2 3
# 57 "/usr/local/include/SDL3/SDL.h" 2 3




# 1 "/usr/local/include/SDL3/SDL_loadso.h" 1 3
# 62 "/usr/local/include/SDL3/SDL_loadso.h" 3
# 1 "/usr/local/include/SDL3/SDL_begin_code.h" 1 3
# 63 "/usr/local/include/SDL3/SDL_loadso.h" 2 3


extern "C" {
# 77 "/usr/local/include/SDL3/SDL_loadso.h" 3
typedef struct SDL_SharedObject SDL_SharedObject;
# 93 "/usr/local/include/SDL3/SDL_loadso.h" 3
extern __attribute__ ((visibility("default"))) SDL_SharedObject * SDL_LoadObject(const char *sofile);
# 121 "/usr/local/include/SDL3/SDL_loadso.h" 3
extern __attribute__ ((visibility("default"))) SDL_FunctionPointer SDL_LoadFunction(SDL_SharedObject *handle, const char *name);
# 137 "/usr/local/include/SDL3/SDL_loadso.h" 3
extern __attribute__ ((visibility("default"))) void SDL_UnloadObject(SDL_SharedObject *handle);



}

# 1 "/usr/local/include/SDL3/SDL_close_code.h" 1 3
# 144 "/usr/local/include/SDL3/SDL_loadso.h" 2 3
# 62 "/usr/local/include/SDL3/SDL.h" 2 3
# 1 "/usr/local/include/SDL3/SDL_locale.h" 1 3
# 40 "/usr/local/include/SDL3/SDL_locale.h" 3
# 1 "/usr/local/include/SDL3/SDL_begin_code.h" 1 3
# 41 "/usr/local/include/SDL3/SDL_locale.h" 2 3



extern "C" {
# 60 "/usr/local/include/SDL3/SDL_locale.h" 3
typedef struct SDL_Locale
{
    const char *language;
    const char *country;
} SDL_Locale;
# 107 "/usr/local/include/SDL3/SDL_locale.h" 3
extern __attribute__ ((visibility("default"))) SDL_Locale ** SDL_GetPreferredLocales(int *count);




}


# 1 "/usr/local/include/SDL3/SDL_close_code.h" 1 3
# 116 "/usr/local/include/SDL3/SDL_locale.h" 2 3
# 63 "/usr/local/include/SDL3/SDL.h" 2 3
# 1 "/usr/local/include/SDL3/SDL_log.h" 1 3
# 75 "/usr/local/include/SDL3/SDL_log.h" 3
# 1 "/usr/local/include/SDL3/SDL_begin_code.h" 1 3
# 76 "/usr/local/include/SDL3/SDL_log.h" 2 3


extern "C" {
# 90 "/usr/local/include/SDL3/SDL_log.h" 3
typedef enum SDL_LogCategory
{
    SDL_LOG_CATEGORY_APPLICATION,
    SDL_LOG_CATEGORY_ERROR,
    SDL_LOG_CATEGORY_ASSERT,
    SDL_LOG_CATEGORY_SYSTEM,
    SDL_LOG_CATEGORY_AUDIO,
    SDL_LOG_CATEGORY_VIDEO,
    SDL_LOG_CATEGORY_RENDER,
    SDL_LOG_CATEGORY_INPUT,
    SDL_LOG_CATEGORY_TEST,
    SDL_LOG_CATEGORY_GPU,


    SDL_LOG_CATEGORY_RESERVED2,
    SDL_LOG_CATEGORY_RESERVED3,
    SDL_LOG_CATEGORY_RESERVED4,
    SDL_LOG_CATEGORY_RESERVED5,
    SDL_LOG_CATEGORY_RESERVED6,
    SDL_LOG_CATEGORY_RESERVED7,
    SDL_LOG_CATEGORY_RESERVED8,
    SDL_LOG_CATEGORY_RESERVED9,
    SDL_LOG_CATEGORY_RESERVED10,
# 122 "/usr/local/include/SDL3/SDL_log.h" 3
    SDL_LOG_CATEGORY_CUSTOM
} SDL_LogCategory;






typedef enum SDL_LogPriority
{
    SDL_LOG_PRIORITY_INVALID,
    SDL_LOG_PRIORITY_TRACE,
    SDL_LOG_PRIORITY_VERBOSE,
    SDL_LOG_PRIORITY_DEBUG,
    SDL_LOG_PRIORITY_INFO,
    SDL_LOG_PRIORITY_WARN,
    SDL_LOG_PRIORITY_ERROR,
    SDL_LOG_PRIORITY_CRITICAL,
    SDL_LOG_PRIORITY_COUNT
} SDL_LogPriority;
# 156 "/usr/local/include/SDL3/SDL_log.h" 3
extern __attribute__ ((visibility("default"))) void SDL_SetLogPriorities(SDL_LogPriority priority);
# 172 "/usr/local/include/SDL3/SDL_log.h" 3
extern __attribute__ ((visibility("default"))) void SDL_SetLogPriority(int category, SDL_LogPriority priority);
# 186 "/usr/local/include/SDL3/SDL_log.h" 3
extern __attribute__ ((visibility("default"))) SDL_LogPriority SDL_GetLogPriority(int category);
# 200 "/usr/local/include/SDL3/SDL_log.h" 3
extern __attribute__ ((visibility("default"))) void SDL_ResetLogPriorities(void);
# 225 "/usr/local/include/SDL3/SDL_log.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetLogPriorityPrefix(SDL_LogPriority priority, const char *prefix);
# 248 "/usr/local/include/SDL3/SDL_log.h" 3
extern __attribute__ ((visibility("default"))) void SDL_Log( const char *fmt, ...) __attribute__ (( format( __printf__, 1, 1 +1 )));
# 272 "/usr/local/include/SDL3/SDL_log.h" 3
extern __attribute__ ((visibility("default"))) void SDL_LogTrace(int category, const char *fmt, ...) __attribute__ (( format( __printf__, 2, 2 +1 )));
# 295 "/usr/local/include/SDL3/SDL_log.h" 3
extern __attribute__ ((visibility("default"))) void SDL_LogVerbose(int category, const char *fmt, ...) __attribute__ (( format( __printf__, 2, 2 +1 )));
# 319 "/usr/local/include/SDL3/SDL_log.h" 3
extern __attribute__ ((visibility("default"))) void SDL_LogDebug(int category, const char *fmt, ...) __attribute__ (( format( __printf__, 2, 2 +1 )));
# 343 "/usr/local/include/SDL3/SDL_log.h" 3
extern __attribute__ ((visibility("default"))) void SDL_LogInfo(int category, const char *fmt, ...) __attribute__ (( format( __printf__, 2, 2 +1 )));
# 367 "/usr/local/include/SDL3/SDL_log.h" 3
extern __attribute__ ((visibility("default"))) void SDL_LogWarn(int category, const char *fmt, ...) __attribute__ (( format( __printf__, 2, 2 +1 )));
# 391 "/usr/local/include/SDL3/SDL_log.h" 3
extern __attribute__ ((visibility("default"))) void SDL_LogError(int category, const char *fmt, ...) __attribute__ (( format( __printf__, 2, 2 +1 )));
# 415 "/usr/local/include/SDL3/SDL_log.h" 3
extern __attribute__ ((visibility("default"))) void SDL_LogCritical(int category, const char *fmt, ...) __attribute__ (( format( __printf__, 2, 2 +1 )));
# 440 "/usr/local/include/SDL3/SDL_log.h" 3
extern __attribute__ ((visibility("default"))) void SDL_LogMessage(int category,
                                            SDL_LogPriority priority,
                                            const char *fmt, ...) __attribute__ (( format( __printf__, 3, 3 +1 )));
# 466 "/usr/local/include/SDL3/SDL_log.h" 3
extern __attribute__ ((visibility("default"))) void SDL_LogMessageV(int category,
                                             SDL_LogPriority priority,
                                             const char *fmt, va_list ap) __attribute__(( format( __printf__, 3, 0 )));
# 485 "/usr/local/include/SDL3/SDL_log.h" 3
typedef void ( *SDL_LogOutputFunction)(void *userdata, int category, SDL_LogPriority priority, const char *message);
# 500 "/usr/local/include/SDL3/SDL_log.h" 3
extern __attribute__ ((visibility("default"))) SDL_LogOutputFunction SDL_GetDefaultLogOutputFunction(void);
# 517 "/usr/local/include/SDL3/SDL_log.h" 3
extern __attribute__ ((visibility("default"))) void SDL_GetLogOutputFunction(SDL_LogOutputFunction *callback, void **userdata);
# 532 "/usr/local/include/SDL3/SDL_log.h" 3
extern __attribute__ ((visibility("default"))) void SDL_SetLogOutputFunction(SDL_LogOutputFunction callback, void *userdata);




}

# 1 "/usr/local/include/SDL3/SDL_close_code.h" 1 3
# 540 "/usr/local/include/SDL3/SDL_log.h" 2 3
# 64 "/usr/local/include/SDL3/SDL.h" 2 3
# 1 "/usr/local/include/SDL3/SDL_messagebox.h" 1 3
# 46 "/usr/local/include/SDL3/SDL_messagebox.h" 3
# 1 "/usr/local/include/SDL3/SDL_begin_code.h" 1 3
# 47 "/usr/local/include/SDL3/SDL_messagebox.h" 2 3


extern "C" {
# 59 "/usr/local/include/SDL3/SDL_messagebox.h" 3
typedef Uint32 SDL_MessageBoxFlags;
# 72 "/usr/local/include/SDL3/SDL_messagebox.h" 3
typedef Uint32 SDL_MessageBoxButtonFlags;
# 82 "/usr/local/include/SDL3/SDL_messagebox.h" 3
typedef struct SDL_MessageBoxButtonData
{
    SDL_MessageBoxButtonFlags flags;
    int buttonID;
    const char *text;
} SDL_MessageBoxButtonData;






typedef struct SDL_MessageBoxColor
{
    Uint8 r, g, b;
} SDL_MessageBoxColor;





typedef enum SDL_MessageBoxColorType
{
    SDL_MESSAGEBOX_COLOR_BACKGROUND,
    SDL_MESSAGEBOX_COLOR_TEXT,
    SDL_MESSAGEBOX_COLOR_BUTTON_BORDER,
    SDL_MESSAGEBOX_COLOR_BUTTON_BACKGROUND,
    SDL_MESSAGEBOX_COLOR_BUTTON_SELECTED,
    SDL_MESSAGEBOX_COLOR_COUNT
} SDL_MessageBoxColorType;






typedef struct SDL_MessageBoxColorScheme
{
    SDL_MessageBoxColor colors[SDL_MESSAGEBOX_COLOR_COUNT];
} SDL_MessageBoxColorScheme;






typedef struct SDL_MessageBoxData
{
    SDL_MessageBoxFlags flags;
    SDL_Window *window;
    const char *title;
    const char *message;

    int numbuttons;
    const SDL_MessageBoxButtonData *buttons;

    const SDL_MessageBoxColorScheme *colorScheme;
} SDL_MessageBoxData;
# 175 "/usr/local/include/SDL3/SDL_messagebox.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_ShowMessageBox(const SDL_MessageBoxData *messageboxdata, int *buttonid);
# 217 "/usr/local/include/SDL3/SDL_messagebox.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_ShowSimpleMessageBox(SDL_MessageBoxFlags flags, const char *title, const char *message, SDL_Window *window);




}

# 1 "/usr/local/include/SDL3/SDL_close_code.h" 1 3
# 225 "/usr/local/include/SDL3/SDL_messagebox.h" 2 3
# 65 "/usr/local/include/SDL3/SDL.h" 2 3
# 1 "/usr/local/include/SDL3/SDL_metal.h" 1 3
# 37 "/usr/local/include/SDL3/SDL_metal.h" 3
# 1 "/usr/local/include/SDL3/SDL_begin_code.h" 1 3
# 38 "/usr/local/include/SDL3/SDL_metal.h" 2 3


extern "C" {







typedef void *SDL_MetalView;
# 73 "/usr/local/include/SDL3/SDL_metal.h" 3
extern __attribute__ ((visibility("default"))) SDL_MetalView SDL_Metal_CreateView(SDL_Window *window);
# 87 "/usr/local/include/SDL3/SDL_metal.h" 3
extern __attribute__ ((visibility("default"))) void SDL_Metal_DestroyView(SDL_MetalView view);
# 97 "/usr/local/include/SDL3/SDL_metal.h" 3
extern __attribute__ ((visibility("default"))) void * SDL_Metal_GetLayer(SDL_MetalView view);





}

# 1 "/usr/local/include/SDL3/SDL_close_code.h" 1 3
# 106 "/usr/local/include/SDL3/SDL_metal.h" 2 3
# 66 "/usr/local/include/SDL3/SDL.h" 2 3
# 1 "/usr/local/include/SDL3/SDL_misc.h" 1 3
# 34 "/usr/local/include/SDL3/SDL_misc.h" 3
# 1 "/usr/local/include/SDL3/SDL_begin_code.h" 1 3
# 35 "/usr/local/include/SDL3/SDL_misc.h" 2 3



extern "C" {
# 70 "/usr/local/include/SDL3/SDL_misc.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_OpenURL(const char *url);



}

# 1 "/usr/local/include/SDL3/SDL_close_code.h" 1 3
# 77 "/usr/local/include/SDL3/SDL_misc.h" 2 3
# 67 "/usr/local/include/SDL3/SDL.h" 2 3




# 1 "/usr/local/include/SDL3/SDL_platform.h" 1 3
# 34 "/usr/local/include/SDL3/SDL_platform.h" 3
# 1 "/usr/local/include/SDL3/SDL_begin_code.h" 1 3
# 35 "/usr/local/include/SDL3/SDL_platform.h" 2 3


extern "C" {
# 56 "/usr/local/include/SDL3/SDL_platform.h" 3
extern __attribute__ ((visibility("default"))) const char * SDL_GetPlatform(void);



}

# 1 "/usr/local/include/SDL3/SDL_close_code.h" 1 3
# 63 "/usr/local/include/SDL3/SDL_platform.h" 2 3
# 72 "/usr/local/include/SDL3/SDL.h" 2 3

# 1 "/usr/local/include/SDL3/SDL_process.h" 1 3
# 51 "/usr/local/include/SDL3/SDL_process.h" 3
# 1 "/usr/local/include/SDL3/SDL_begin_code.h" 1 3
# 52 "/usr/local/include/SDL3/SDL_process.h" 2 3


extern "C" {
# 64 "/usr/local/include/SDL3/SDL_process.h" 3
typedef struct SDL_Process SDL_Process;
# 106 "/usr/local/include/SDL3/SDL_process.h" 3
extern __attribute__ ((visibility("default"))) SDL_Process * SDL_CreateProcess(const char * const *args, bool pipe_stdio);
# 150 "/usr/local/include/SDL3/SDL_process.h" 3
typedef enum SDL_ProcessIO
{
    SDL_PROCESS_STDIO_INHERITED,
    SDL_PROCESS_STDIO_NULL,
    SDL_PROCESS_STDIO_APP,
    SDL_PROCESS_STDIO_REDIRECT
} SDL_ProcessIO;
# 227 "/usr/local/include/SDL3/SDL_process.h" 3
extern __attribute__ ((visibility("default"))) SDL_Process * SDL_CreateProcessWithProperties(SDL_PropertiesID props);
# 271 "/usr/local/include/SDL3/SDL_process.h" 3
extern __attribute__ ((visibility("default"))) SDL_PropertiesID SDL_GetProcessProperties(SDL_Process *process);
# 308 "/usr/local/include/SDL3/SDL_process.h" 3
extern __attribute__ ((visibility("default"))) void * SDL_ReadProcess(SDL_Process *process, size_t *datasize, int *exitcode);
# 334 "/usr/local/include/SDL3/SDL_process.h" 3
extern __attribute__ ((visibility("default"))) SDL_IOStream * SDL_GetProcessInput(SDL_Process *process);
# 358 "/usr/local/include/SDL3/SDL_process.h" 3
extern __attribute__ ((visibility("default"))) SDL_IOStream * SDL_GetProcessOutput(SDL_Process *process);
# 381 "/usr/local/include/SDL3/SDL_process.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_KillProcess(SDL_Process *process, bool force);
# 414 "/usr/local/include/SDL3/SDL_process.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_WaitProcess(SDL_Process *process, bool block, int *exitcode);
# 433 "/usr/local/include/SDL3/SDL_process.h" 3
extern __attribute__ ((visibility("default"))) void SDL_DestroyProcess(SDL_Process *process);



}

# 1 "/usr/local/include/SDL3/SDL_close_code.h" 1 3
# 440 "/usr/local/include/SDL3/SDL_process.h" 2 3
# 74 "/usr/local/include/SDL3/SDL.h" 2 3


# 1 "/usr/local/include/SDL3/SDL_render.h" 1 3
# 64 "/usr/local/include/SDL3/SDL_render.h" 3
# 1 "/usr/local/include/SDL3/SDL_begin_code.h" 1 3
# 65 "/usr/local/include/SDL3/SDL_render.h" 2 3


extern "C" {
# 89 "/usr/local/include/SDL3/SDL_render.h" 3
typedef struct SDL_Vertex
{
    SDL_FPoint position;
    SDL_FColor color;
    SDL_FPoint tex_coord;
} SDL_Vertex;






typedef enum SDL_TextureAccess
{
    SDL_TEXTUREACCESS_STATIC,
    SDL_TEXTUREACCESS_STREAMING,
    SDL_TEXTUREACCESS_TARGET
} SDL_TextureAccess;
# 119 "/usr/local/include/SDL3/SDL_render.h" 3
typedef enum SDL_TextureAddressMode
{
    SDL_TEXTURE_ADDRESS_INVALID = -1,
    SDL_TEXTURE_ADDRESS_AUTO,
    SDL_TEXTURE_ADDRESS_CLAMP,
    SDL_TEXTURE_ADDRESS_WRAP
} SDL_TextureAddressMode;






typedef enum SDL_RendererLogicalPresentation
{
    SDL_LOGICAL_PRESENTATION_DISABLED,
    SDL_LOGICAL_PRESENTATION_STRETCH,
    SDL_LOGICAL_PRESENTATION_LETTERBOX,
    SDL_LOGICAL_PRESENTATION_OVERSCAN,
    SDL_LOGICAL_PRESENTATION_INTEGER_SCALE
} SDL_RendererLogicalPresentation;






typedef struct SDL_Renderer SDL_Renderer;
# 160 "/usr/local/include/SDL3/SDL_render.h" 3
struct SDL_Texture
{
    SDL_PixelFormat format;
    int w;
    int h;

    int refcount;
};


typedef struct SDL_Texture SDL_Texture;
# 192 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) int SDL_GetNumRenderDrivers(void);
# 216 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) const char * SDL_GetRenderDriver(int index);
# 238 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_CreateWindowAndRenderer(const char *title, int width, int height, SDL_WindowFlags window_flags, SDL_Window **window, SDL_Renderer **renderer);
# 273 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) SDL_Renderer * SDL_CreateRenderer(SDL_Window *window, const char *name);
# 337 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) SDL_Renderer * SDL_CreateRendererWithProperties(SDL_PropertiesID props);
# 387 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) SDL_Renderer * SDL_CreateGPURenderer(SDL_GPUDevice *device, SDL_Window *window);
# 400 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) SDL_GPUDevice * SDL_GetGPURendererDevice(SDL_Renderer *renderer);
# 421 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) SDL_Renderer * SDL_CreateSoftwareRenderer(SDL_Surface *surface);
# 434 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) SDL_Renderer * SDL_GetRenderer(SDL_Window *window);
# 447 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) SDL_Window * SDL_GetRenderWindow(SDL_Renderer *renderer);
# 463 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) const char * SDL_GetRendererName(SDL_Renderer *renderer);
# 551 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) SDL_PropertiesID SDL_GetRendererProperties(SDL_Renderer *renderer);
# 600 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetRenderOutputSize(SDL_Renderer *renderer, int *w, int *h);
# 623 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetCurrentRenderOutputSize(SDL_Renderer *renderer, int *w, int *h);
# 648 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) SDL_Texture * SDL_CreateTexture(SDL_Renderer *renderer, SDL_PixelFormat format, SDL_TextureAccess access, int w, int h);
# 676 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) SDL_Texture * SDL_CreateTextureFromSurface(SDL_Renderer *renderer, SDL_Surface *surface);
# 804 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) SDL_Texture * SDL_CreateTextureWithProperties(SDL_Renderer *renderer, SDL_PropertiesID props);
# 933 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) SDL_PropertiesID SDL_GetTextureProperties(SDL_Texture *texture);
# 977 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) SDL_Renderer * SDL_GetRendererFromTexture(SDL_Texture *texture);
# 994 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetTextureSize(SDL_Texture *texture, float *w, float *h);
# 1016 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetTexturePalette(SDL_Texture *texture, SDL_Palette *palette);
# 1031 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) SDL_Palette * SDL_GetTexturePalette(SDL_Texture *texture);
# 1060 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetTextureColorMod(SDL_Texture *texture, Uint8 r, Uint8 g, Uint8 b);
# 1090 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetTextureColorModFloat(SDL_Texture *texture, float r, float g, float b);
# 1111 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetTextureColorMod(SDL_Texture *texture, Uint8 *r, Uint8 *g, Uint8 *b);
# 1131 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetTextureColorModFloat(SDL_Texture *texture, float *r, float *g, float *b);
# 1157 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetTextureAlphaMod(SDL_Texture *texture, Uint8 alpha);
# 1183 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetTextureAlphaModFloat(SDL_Texture *texture, float alpha);
# 1201 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetTextureAlphaMod(SDL_Texture *texture, Uint8 *alpha);
# 1219 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetTextureAlphaModFloat(SDL_Texture *texture, float *alpha);
# 1238 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetTextureBlendMode(SDL_Texture *texture, SDL_BlendMode blendMode);
# 1254 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetTextureBlendMode(SDL_Texture *texture, SDL_BlendMode *blendMode);
# 1274 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetTextureScaleMode(SDL_Texture *texture, SDL_ScaleMode scaleMode);
# 1290 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetTextureScaleMode(SDL_Texture *texture, SDL_ScaleMode *scaleMode);
# 1324 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_UpdateTexture(SDL_Texture *texture, const SDL_Rect *rect, const void *pixels, int pitch);
# 1356 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_UpdateYUVTexture(SDL_Texture *texture,
                                                 const SDL_Rect *rect,
                                                 const Uint8 *Yplane, int Ypitch,
                                                 const Uint8 *Uplane, int Upitch,
                                                 const Uint8 *Vplane, int Vpitch);
# 1388 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_UpdateNVTexture(SDL_Texture *texture,
                                                 const SDL_Rect *rect,
                                                 const Uint8 *Yplane, int Ypitch,
                                                 const Uint8 *UVplane, int UVpitch);
# 1423 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_LockTexture(SDL_Texture *texture,
                                            const SDL_Rect *rect,
                                            void **pixels, int *pitch);
# 1461 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_LockTextureToSurface(SDL_Texture *texture, const SDL_Rect *rect, SDL_Surface **surface);
# 1482 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) void SDL_UnlockTexture(SDL_Texture *texture);
# 1509 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetRenderTarget(SDL_Renderer *renderer, SDL_Texture *texture);
# 1526 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) SDL_Texture * SDL_GetRenderTarget(SDL_Renderer *renderer);
# 1573 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetRenderLogicalPresentation(SDL_Renderer *renderer, int w, int h, SDL_RendererLogicalPresentation mode);
# 1598 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetRenderLogicalPresentation(SDL_Renderer *renderer, int *w, int *h, SDL_RendererLogicalPresentation *mode);
# 1623 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetRenderLogicalPresentationRect(SDL_Renderer *renderer, SDL_FRect *rect);
# 1650 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_RenderCoordinatesFromWindow(SDL_Renderer *renderer, float window_x, float window_y, float *x, float *y);
# 1680 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_RenderCoordinatesToWindow(SDL_Renderer *renderer, float x, float y, float *window_x, float *window_y);
# 1716 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_ConvertEventToRenderCoordinates(SDL_Renderer *renderer, SDL_Event *event);
# 1743 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetRenderViewport(SDL_Renderer *renderer, const SDL_Rect *rect);
# 1763 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetRenderViewport(SDL_Renderer *renderer, SDL_Rect *rect);
# 1785 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_RenderViewportSet(SDL_Renderer *renderer);
# 1807 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetRenderSafeArea(SDL_Renderer *renderer, SDL_Rect *rect);
# 1828 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetRenderClipRect(SDL_Renderer *renderer, const SDL_Rect *rect);
# 1849 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetRenderClipRect(SDL_Renderer *renderer, SDL_Rect *rect);
# 1868 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_RenderClipEnabled(SDL_Renderer *renderer);
# 1896 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetRenderScale(SDL_Renderer *renderer, float scaleX, float scaleY);
# 1916 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetRenderScale(SDL_Renderer *renderer, float *scaleX, float *scaleY);
# 1941 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetRenderDrawColor(SDL_Renderer *renderer, Uint8 r, Uint8 g, Uint8 b, Uint8 a);
# 1966 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetRenderDrawColorFloat(SDL_Renderer *renderer, float r, float g, float b, float a);
# 1990 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetRenderDrawColor(SDL_Renderer *renderer, Uint8 *r, Uint8 *g, Uint8 *b, Uint8 *a);
# 2014 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetRenderDrawColorFloat(SDL_Renderer *renderer, float *r, float *g, float *b, float *a);
# 2038 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetRenderColorScale(SDL_Renderer *renderer, float scale);
# 2054 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetRenderColorScale(SDL_Renderer *renderer, float *scale);
# 2072 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetRenderDrawBlendMode(SDL_Renderer *renderer, SDL_BlendMode blendMode);
# 2088 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetRenderDrawBlendMode(SDL_Renderer *renderer, SDL_BlendMode *blendMode);
# 2108 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_RenderClear(SDL_Renderer *renderer);
# 2125 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_RenderPoint(SDL_Renderer *renderer, float x, float y);
# 2142 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_RenderPoints(SDL_Renderer *renderer, const SDL_FPoint *points, int count);
# 2161 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_RenderLine(SDL_Renderer *renderer, float x1, float y1, float x2, float y2);
# 2179 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_RenderLines(SDL_Renderer *renderer, const SDL_FPoint *points, int count);
# 2196 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_RenderRect(SDL_Renderer *renderer, const SDL_FRect *rect);
# 2214 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_RenderRects(SDL_Renderer *renderer, const SDL_FRect *rects, int count);
# 2232 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_RenderFillRect(SDL_Renderer *renderer, const SDL_FRect *rect);
# 2250 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_RenderFillRects(SDL_Renderer *renderer, const SDL_FRect *rects, int count);
# 2272 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_RenderTexture(SDL_Renderer *renderer, SDL_Texture *texture, const SDL_FRect *srcrect, const SDL_FRect *dstrect);
# 2300 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_RenderTextureRotated(SDL_Renderer *renderer, SDL_Texture *texture,
                                                     const SDL_FRect *srcrect, const SDL_FRect *dstrect,
                                                     double angle, const SDL_FPoint *center,
                                                     SDL_FlipMode flip);
# 2331 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_RenderTextureAffine(SDL_Renderer *renderer, SDL_Texture *texture,
                                                     const SDL_FRect *srcrect, const SDL_FPoint *origin,
                                                     const SDL_FPoint *right, const SDL_FPoint *down);
# 2360 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_RenderTextureTiled(SDL_Renderer *renderer, SDL_Texture *texture, const SDL_FRect *srcrect, float scale, const SDL_FRect *dstrect);
# 2395 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_RenderTexture9Grid(SDL_Renderer *renderer, SDL_Texture *texture, const SDL_FRect *srcrect, float left_width, float right_width, float top_height, float bottom_height, float scale, const SDL_FRect *dstrect);
# 2433 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_RenderTexture9GridTiled(SDL_Renderer *renderer, SDL_Texture *texture, const SDL_FRect *srcrect, float left_width, float right_width, float top_height, float bottom_height, float scale, const SDL_FRect *dstrect, float tileScale);
# 2458 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_RenderGeometry(SDL_Renderer *renderer,
                                               SDL_Texture *texture,
                                               const SDL_Vertex *vertices, int num_vertices,
                                               const int *indices, int num_indices);
# 2491 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_RenderGeometryRaw(SDL_Renderer *renderer,
                                               SDL_Texture *texture,
                                               const float *xy, int xy_stride,
                                               const SDL_FColor *color, int color_stride,
                                               const float *uv, int uv_stride,
                                               int num_vertices,
                                               const void *indices, int num_indices, int size_indices);
# 2516 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetRenderTextureAddressMode(SDL_Renderer *renderer, SDL_TextureAddressMode u_mode, SDL_TextureAddressMode v_mode);
# 2535 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetRenderTextureAddressMode(SDL_Renderer *renderer, SDL_TextureAddressMode *u_mode, SDL_TextureAddressMode *v_mode);
# 2562 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) SDL_Surface * SDL_RenderReadPixels(SDL_Renderer *renderer, const SDL_Rect *rect);
# 2611 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_RenderPresent(SDL_Renderer *renderer);
# 2628 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) void SDL_DestroyTexture(SDL_Texture *texture);
# 2644 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) void SDL_DestroyRenderer(SDL_Renderer *renderer);
# 2677 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_FlushRenderer(SDL_Renderer *renderer);
# 2695 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) void * SDL_GetRenderMetalLayer(SDL_Renderer *renderer);
# 2718 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) void * SDL_GetRenderMetalCommandEncoder(SDL_Renderer *renderer);
# 2749 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_AddVulkanRenderSemaphores(SDL_Renderer *renderer, Uint32 wait_stage_mask, Sint64 wait_semaphore, Sint64 signal_semaphore);
# 2774 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetRenderVSync(SDL_Renderer *renderer, int vsync);
# 2794 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetRenderVSync(SDL_Renderer *renderer, int *vsync);
# 2846 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_RenderDebugText(SDL_Renderer *renderer, float x, float y, const char *str);
# 2874 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_RenderDebugTextFormat(SDL_Renderer *renderer, float x, float y, const char *fmt, ...) __attribute__ (( format( __printf__, 4, 4 +1 )));
# 2892 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetDefaultTextureScaleMode(SDL_Renderer *renderer, SDL_ScaleMode scale_mode);
# 2910 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetDefaultTextureScaleMode(SDL_Renderer *renderer, SDL_ScaleMode *scale_mode);
# 2919 "/usr/local/include/SDL3/SDL_render.h" 3
typedef struct SDL_GPURenderStateCreateInfo
{
    SDL_GPUShader *fragment_shader;

    Sint32 num_sampler_bindings;
    const SDL_GPUTextureSamplerBinding *sampler_bindings;

    Sint32 num_storage_textures;
    SDL_GPUTexture *const *storage_textures;

    Sint32 num_storage_buffers;
    SDL_GPUBuffer *const *storage_buffers;

    SDL_PropertiesID props;
} SDL_GPURenderStateCreateInfo;
# 2945 "/usr/local/include/SDL3/SDL_render.h" 3
typedef struct SDL_GPURenderState SDL_GPURenderState;
# 2964 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) SDL_GPURenderState * SDL_CreateGPURenderState(SDL_Renderer *renderer, const SDL_GPURenderStateCreateInfo *createinfo);
# 2984 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetGPURenderStateFragmentUniforms(SDL_GPURenderState *state, Uint32 slot_index, const void *data, Uint32 length);
# 3002 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetGPURenderState(SDL_Renderer *renderer, SDL_GPURenderState *state);
# 3016 "/usr/local/include/SDL3/SDL_render.h" 3
extern __attribute__ ((visibility("default"))) void SDL_DestroyGPURenderState(SDL_GPURenderState *state);



}

# 1 "/usr/local/include/SDL3/SDL_close_code.h" 1 3
# 3023 "/usr/local/include/SDL3/SDL_render.h" 2 3
# 77 "/usr/local/include/SDL3/SDL.h" 2 3


# 1 "/usr/local/include/SDL3/SDL_storage.h" 1 3
# 251 "/usr/local/include/SDL3/SDL_storage.h" 3
# 1 "/usr/local/include/SDL3/SDL_begin_code.h" 1 3
# 252 "/usr/local/include/SDL3/SDL_storage.h" 2 3



extern "C" {
# 274 "/usr/local/include/SDL3/SDL_storage.h" 3
typedef struct SDL_StorageInterface
{

    Uint32 version;


    bool ( *close)(void *userdata);


    bool ( *ready)(void *userdata);


    bool ( *enumerate)(void *userdata, const char *path, SDL_EnumerateDirectoryCallback callback, void *callback_userdata);


    bool ( *info)(void *userdata, const char *path, SDL_PathInfo *info);


    bool ( *read_file)(void *userdata, const char *path, void *destination, Uint64 length);


    bool ( *write_file)(void *userdata, const char *path, const void *source, Uint64 length);


    bool ( *mkdir)(void *userdata, const char *path);


    bool ( *remove)(void *userdata, const char *path);


    bool ( *rename)(void *userdata, const char *oldpath, const char *newpath);


    bool ( *copy)(void *userdata, const char *oldpath, const char *newpath);


    Uint64 ( *space_remaining)(void *userdata);
} SDL_StorageInterface;







static_assert((sizeof(void *) == 4 && sizeof(SDL_StorageInterface) == 48) || (sizeof(void *) == 8 && sizeof(SDL_StorageInterface) == 96), "(sizeof(void *) == 4 && sizeof(SDL_StorageInterface) == 48) || (sizeof(void *) == 8 && sizeof(SDL_StorageInterface) == 96)")

                                                                ;
# 332 "/usr/local/include/SDL3/SDL_storage.h" 3
typedef struct SDL_Storage SDL_Storage;
# 353 "/usr/local/include/SDL3/SDL_storage.h" 3
extern __attribute__ ((visibility("default"))) SDL_Storage * SDL_OpenTitleStorage(const char *override, SDL_PropertiesID props);
# 379 "/usr/local/include/SDL3/SDL_storage.h" 3
extern __attribute__ ((visibility("default"))) SDL_Storage * SDL_OpenUserStorage(const char *org, const char *app, SDL_PropertiesID props);
# 403 "/usr/local/include/SDL3/SDL_storage.h" 3
extern __attribute__ ((visibility("default"))) SDL_Storage * SDL_OpenFileStorage(const char *path);
# 432 "/usr/local/include/SDL3/SDL_storage.h" 3
extern __attribute__ ((visibility("default"))) SDL_Storage * SDL_OpenStorage(const SDL_StorageInterface *iface, void *userdata);
# 450 "/usr/local/include/SDL3/SDL_storage.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_CloseStorage(SDL_Storage *storage);
# 465 "/usr/local/include/SDL3/SDL_storage.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_StorageReady(SDL_Storage *storage);
# 481 "/usr/local/include/SDL3/SDL_storage.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetStorageFileSize(SDL_Storage *storage, const char *path, Uint64 *length);
# 504 "/usr/local/include/SDL3/SDL_storage.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_ReadStorageFile(SDL_Storage *storage, const char *path, void *destination, Uint64 length);
# 522 "/usr/local/include/SDL3/SDL_storage.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_WriteStorageFile(SDL_Storage *storage, const char *path, const void *source, Uint64 length);
# 536 "/usr/local/include/SDL3/SDL_storage.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_CreateStorageDirectory(SDL_Storage *storage, const char *path);
# 565 "/usr/local/include/SDL3/SDL_storage.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_EnumerateStorageDirectory(SDL_Storage *storage, const char *path, SDL_EnumerateDirectoryCallback callback, void *userdata);
# 579 "/usr/local/include/SDL3/SDL_storage.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_RemoveStoragePath(SDL_Storage *storage, const char *path);
# 594 "/usr/local/include/SDL3/SDL_storage.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_RenameStoragePath(SDL_Storage *storage, const char *oldpath, const char *newpath);
# 609 "/usr/local/include/SDL3/SDL_storage.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_CopyStorageFile(SDL_Storage *storage, const char *oldpath, const char *newpath);
# 625 "/usr/local/include/SDL3/SDL_storage.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetStoragePathInfo(SDL_Storage *storage, const char *path, SDL_PathInfo *info);
# 638 "/usr/local/include/SDL3/SDL_storage.h" 3
extern __attribute__ ((visibility("default"))) Uint64 SDL_GetStorageSpaceRemaining(SDL_Storage *storage);
# 678 "/usr/local/include/SDL3/SDL_storage.h" 3
extern __attribute__ ((visibility("default"))) char ** SDL_GlobStorageDirectory(SDL_Storage *storage, const char *path, const char *pattern, SDL_GlobFlags flags, int *count);



}

# 1 "/usr/local/include/SDL3/SDL_close_code.h" 1 3
# 685 "/usr/local/include/SDL3/SDL_storage.h" 2 3
# 80 "/usr/local/include/SDL3/SDL.h" 2 3

# 1 "/usr/local/include/SDL3/SDL_system.h" 1 3
# 42 "/usr/local/include/SDL3/SDL_system.h" 3
# 1 "/usr/local/include/SDL3/SDL_begin_code.h" 1 3
# 43 "/usr/local/include/SDL3/SDL_system.h" 2 3


extern "C" {
# 139 "/usr/local/include/SDL3/SDL_system.h" 3
typedef union _XEvent XEvent;
# 161 "/usr/local/include/SDL3/SDL_system.h" 3
typedef bool ( *SDL_X11EventHook)(void *userdata, XEvent *xevent);
# 174 "/usr/local/include/SDL3/SDL_system.h" 3
extern __attribute__ ((visibility("default"))) void SDL_SetX11EventHook(SDL_X11EventHook callback, void *userdata);
# 191 "/usr/local/include/SDL3/SDL_system.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetLinuxThreadPriority(Sint64 threadID, int priority);
# 207 "/usr/local/include/SDL3/SDL_system.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_SetLinuxThreadPriorityAndPolicy(Sint64 threadID, int sdlPriority, int schedPolicy);
# 610 "/usr/local/include/SDL3/SDL_system.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_IsTablet(void);
# 621 "/usr/local/include/SDL3/SDL_system.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_IsTV(void);






typedef enum SDL_Sandbox
{
    SDL_SANDBOX_NONE = 0,
    SDL_SANDBOX_UNKNOWN_CONTAINER,
    SDL_SANDBOX_FLATPAK,
    SDL_SANDBOX_SNAP,
    SDL_SANDBOX_MACOS
} SDL_Sandbox;
# 645 "/usr/local/include/SDL3/SDL_system.h" 3
extern __attribute__ ((visibility("default"))) SDL_Sandbox SDL_GetSandbox(void);
# 665 "/usr/local/include/SDL3/SDL_system.h" 3
extern __attribute__ ((visibility("default"))) void SDL_OnApplicationWillTerminate(void);
# 682 "/usr/local/include/SDL3/SDL_system.h" 3
extern __attribute__ ((visibility("default"))) void SDL_OnApplicationDidReceiveMemoryWarning(void);
# 699 "/usr/local/include/SDL3/SDL_system.h" 3
extern __attribute__ ((visibility("default"))) void SDL_OnApplicationWillEnterBackground(void);
# 716 "/usr/local/include/SDL3/SDL_system.h" 3
extern __attribute__ ((visibility("default"))) void SDL_OnApplicationDidEnterBackground(void);
# 733 "/usr/local/include/SDL3/SDL_system.h" 3
extern __attribute__ ((visibility("default"))) void SDL_OnApplicationWillEnterForeground(void);
# 750 "/usr/local/include/SDL3/SDL_system.h" 3
extern __attribute__ ((visibility("default"))) void SDL_OnApplicationDidEnterForeground(void);
# 814 "/usr/local/include/SDL3/SDL_system.h" 3
}

# 1 "/usr/local/include/SDL3/SDL_close_code.h" 1 3
# 817 "/usr/local/include/SDL3/SDL_system.h" 2 3
# 82 "/usr/local/include/SDL3/SDL.h" 2 3

# 1 "/usr/local/include/SDL3/SDL_time.h" 1 3
# 42 "/usr/local/include/SDL3/SDL_time.h" 3
# 1 "/usr/local/include/SDL3/SDL_begin_code.h" 1 3
# 43 "/usr/local/include/SDL3/SDL_time.h" 2 3


extern "C" {
# 54 "/usr/local/include/SDL3/SDL_time.h" 3
typedef struct SDL_DateTime
{
    int year;
    int month;
    int day;
    int hour;
    int minute;
    int second;
    int nanosecond;
    int day_of_week;
    int utc_offset;
} SDL_DateTime;
# 74 "/usr/local/include/SDL3/SDL_time.h" 3
typedef enum SDL_DateFormat
{
    SDL_DATE_FORMAT_YYYYMMDD = 0,
    SDL_DATE_FORMAT_DDMMYYYY = 1,
    SDL_DATE_FORMAT_MMDDYYYY = 2
} SDL_DateFormat;
# 88 "/usr/local/include/SDL3/SDL_time.h" 3
typedef enum SDL_TimeFormat
{
    SDL_TIME_FORMAT_24HR = 0,
    SDL_TIME_FORMAT_12HR = 1
} SDL_TimeFormat;
# 111 "/usr/local/include/SDL3/SDL_time.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetDateTimeLocalePreferences(SDL_DateFormat *dateFormat, SDL_TimeFormat *timeFormat);
# 123 "/usr/local/include/SDL3/SDL_time.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetCurrentTime(SDL_Time *ticks);
# 139 "/usr/local/include/SDL3/SDL_time.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_TimeToDateTime(SDL_Time ticks, SDL_DateTime *dt, bool localTime);
# 154 "/usr/local/include/SDL3/SDL_time.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_DateTimeToTime(const SDL_DateTime *dt, SDL_Time *ticks);
# 170 "/usr/local/include/SDL3/SDL_time.h" 3
extern __attribute__ ((visibility("default"))) void SDL_TimeToWindows(SDL_Time ticks, Uint32 *dwLowDateTime, Uint32 *dwHighDateTime);
# 185 "/usr/local/include/SDL3/SDL_time.h" 3
extern __attribute__ ((visibility("default"))) SDL_Time SDL_TimeFromWindows(Uint32 dwLowDateTime, Uint32 dwHighDateTime);
# 197 "/usr/local/include/SDL3/SDL_time.h" 3
extern __attribute__ ((visibility("default"))) int SDL_GetDaysInMonth(int year, int month);
# 210 "/usr/local/include/SDL3/SDL_time.h" 3
extern __attribute__ ((visibility("default"))) int SDL_GetDayOfYear(int year, int month, int day);
# 223 "/usr/local/include/SDL3/SDL_time.h" 3
extern __attribute__ ((visibility("default"))) int SDL_GetDayOfWeek(int year, int month, int day);



}

# 1 "/usr/local/include/SDL3/SDL_close_code.h" 1 3
# 230 "/usr/local/include/SDL3/SDL_time.h" 2 3
# 84 "/usr/local/include/SDL3/SDL.h" 2 3
# 1 "/usr/local/include/SDL3/SDL_timer.h" 1 3
# 47 "/usr/local/include/SDL3/SDL_timer.h" 3
# 1 "/usr/local/include/SDL3/SDL_begin_code.h" 1 3
# 48 "/usr/local/include/SDL3/SDL_timer.h" 2 3


extern "C" {
# 201 "/usr/local/include/SDL3/SDL_timer.h" 3
extern __attribute__ ((visibility("default"))) Uint64 SDL_GetTicks(void);
# 213 "/usr/local/include/SDL3/SDL_timer.h" 3
extern __attribute__ ((visibility("default"))) Uint64 SDL_GetTicksNS(void);
# 232 "/usr/local/include/SDL3/SDL_timer.h" 3
extern __attribute__ ((visibility("default"))) Uint64 SDL_GetPerformanceCounter(void);
# 245 "/usr/local/include/SDL3/SDL_timer.h" 3
extern __attribute__ ((visibility("default"))) Uint64 SDL_GetPerformanceFrequency(void);
# 263 "/usr/local/include/SDL3/SDL_timer.h" 3
extern __attribute__ ((visibility("default"))) void SDL_Delay(Uint32 ms);
# 281 "/usr/local/include/SDL3/SDL_timer.h" 3
extern __attribute__ ((visibility("default"))) void SDL_DelayNS(Uint64 ns);
# 299 "/usr/local/include/SDL3/SDL_timer.h" 3
extern __attribute__ ((visibility("default"))) void SDL_DelayPrecise(Uint64 ns);






typedef Uint32 SDL_TimerID;
# 332 "/usr/local/include/SDL3/SDL_timer.h" 3
typedef Uint32 ( *SDL_TimerCallback)(void *userdata, SDL_TimerID timerID, Uint32 interval);
# 368 "/usr/local/include/SDL3/SDL_timer.h" 3
extern __attribute__ ((visibility("default"))) SDL_TimerID SDL_AddTimer(Uint32 interval, SDL_TimerCallback callback, void *userdata);
# 394 "/usr/local/include/SDL3/SDL_timer.h" 3
typedef Uint64 ( *SDL_NSTimerCallback)(void *userdata, SDL_TimerID timerID, Uint64 interval);
# 430 "/usr/local/include/SDL3/SDL_timer.h" 3
extern __attribute__ ((visibility("default"))) SDL_TimerID SDL_AddTimerNS(Uint64 interval, SDL_NSTimerCallback callback, void *userdata);
# 445 "/usr/local/include/SDL3/SDL_timer.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_RemoveTimer(SDL_TimerID id);




}

# 1 "/usr/local/include/SDL3/SDL_close_code.h" 1 3
# 453 "/usr/local/include/SDL3/SDL_timer.h" 2 3
# 85 "/usr/local/include/SDL3/SDL.h" 2 3
# 1 "/usr/local/include/SDL3/SDL_tray.h" 1 3
# 41 "/usr/local/include/SDL3/SDL_tray.h" 3
# 1 "/usr/local/include/SDL3/SDL_begin_code.h" 1 3
# 42 "/usr/local/include/SDL3/SDL_tray.h" 2 3


extern "C" {







typedef struct SDL_Tray SDL_Tray;






typedef struct SDL_TrayMenu SDL_TrayMenu;






typedef struct SDL_TrayEntry SDL_TrayEntry;
# 79 "/usr/local/include/SDL3/SDL_tray.h" 3
typedef Uint32 SDL_TrayEntryFlags;
# 98 "/usr/local/include/SDL3/SDL_tray.h" 3
typedef void ( *SDL_TrayCallback)(void *userdata, SDL_TrayEntry *entry);
# 114 "/usr/local/include/SDL3/SDL_tray.h" 3
typedef bool ( *SDL_TrayClickCallback)(void *userdata, SDL_Tray *tray);
# 139 "/usr/local/include/SDL3/SDL_tray.h" 3
extern __attribute__ ((visibility("default"))) SDL_Tray * SDL_CreateTray(SDL_Surface *icon, const char *tooltip);
# 183 "/usr/local/include/SDL3/SDL_tray.h" 3
extern __attribute__ ((visibility("default"))) SDL_Tray * SDL_CreateTrayWithProperties(SDL_PropertiesID props);
# 205 "/usr/local/include/SDL3/SDL_tray.h" 3
extern __attribute__ ((visibility("default"))) void SDL_SetTrayIcon(SDL_Tray *tray, SDL_Surface *icon);
# 220 "/usr/local/include/SDL3/SDL_tray.h" 3
extern __attribute__ ((visibility("default"))) void SDL_SetTrayTooltip(SDL_Tray *tray, const char *tooltip);
# 244 "/usr/local/include/SDL3/SDL_tray.h" 3
extern __attribute__ ((visibility("default"))) SDL_TrayMenu * SDL_CreateTrayMenu(SDL_Tray *tray);
# 268 "/usr/local/include/SDL3/SDL_tray.h" 3
extern __attribute__ ((visibility("default"))) SDL_TrayMenu * SDL_CreateTraySubmenu(SDL_TrayEntry *entry);
# 292 "/usr/local/include/SDL3/SDL_tray.h" 3
extern __attribute__ ((visibility("default"))) SDL_TrayMenu * SDL_GetTrayMenu(SDL_Tray *tray);
# 316 "/usr/local/include/SDL3/SDL_tray.h" 3
extern __attribute__ ((visibility("default"))) SDL_TrayMenu * SDL_GetTraySubmenu(SDL_TrayEntry *entry);
# 336 "/usr/local/include/SDL3/SDL_tray.h" 3
extern __attribute__ ((visibility("default"))) const SDL_TrayEntry ** SDL_GetTrayEntries(SDL_TrayMenu *menu, int *count);
# 351 "/usr/local/include/SDL3/SDL_tray.h" 3
extern __attribute__ ((visibility("default"))) void SDL_RemoveTrayEntry(SDL_TrayEntry *entry);
# 379 "/usr/local/include/SDL3/SDL_tray.h" 3
extern __attribute__ ((visibility("default"))) SDL_TrayEntry * SDL_InsertTrayEntryAt(SDL_TrayMenu *menu, int pos, const char *label, SDL_TrayEntryFlags flags);
# 401 "/usr/local/include/SDL3/SDL_tray.h" 3
extern __attribute__ ((visibility("default"))) void SDL_SetTrayEntryLabel(SDL_TrayEntry *entry, const char *label);
# 420 "/usr/local/include/SDL3/SDL_tray.h" 3
extern __attribute__ ((visibility("default"))) const char * SDL_GetTrayEntryLabel(SDL_TrayEntry *entry);
# 439 "/usr/local/include/SDL3/SDL_tray.h" 3
extern __attribute__ ((visibility("default"))) void SDL_SetTrayEntryChecked(SDL_TrayEntry *entry, bool checked);
# 458 "/usr/local/include/SDL3/SDL_tray.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetTrayEntryChecked(SDL_TrayEntry *entry);
# 475 "/usr/local/include/SDL3/SDL_tray.h" 3
extern __attribute__ ((visibility("default"))) void SDL_SetTrayEntryEnabled(SDL_TrayEntry *entry, bool enabled);
# 492 "/usr/local/include/SDL3/SDL_tray.h" 3
extern __attribute__ ((visibility("default"))) bool SDL_GetTrayEntryEnabled(SDL_TrayEntry *entry);
# 510 "/usr/local/include/SDL3/SDL_tray.h" 3
extern __attribute__ ((visibility("default"))) void SDL_SetTrayEntryCallback(SDL_TrayEntry *entry, SDL_TrayCallback callback, void *userdata);
# 522 "/usr/local/include/SDL3/SDL_tray.h" 3
extern __attribute__ ((visibility("default"))) void SDL_ClickTrayEntry(SDL_TrayEntry *entry);
# 538 "/usr/local/include/SDL3/SDL_tray.h" 3
extern __attribute__ ((visibility("default"))) void SDL_DestroyTray(SDL_Tray *tray);
# 553 "/usr/local/include/SDL3/SDL_tray.h" 3
extern __attribute__ ((visibility("default"))) SDL_TrayMenu * SDL_GetTrayEntryParent(SDL_TrayEntry *entry);
# 573 "/usr/local/include/SDL3/SDL_tray.h" 3
extern __attribute__ ((visibility("default"))) SDL_TrayEntry * SDL_GetTrayMenuParentEntry(SDL_TrayMenu *menu);
# 593 "/usr/local/include/SDL3/SDL_tray.h" 3
extern __attribute__ ((visibility("default"))) SDL_Tray * SDL_GetTrayMenuParentTray(SDL_TrayMenu *menu);
# 605 "/usr/local/include/SDL3/SDL_tray.h" 3
extern __attribute__ ((visibility("default"))) void SDL_UpdateTrays(void);



}

# 1 "/usr/local/include/SDL3/SDL_close_code.h" 1 3
# 612 "/usr/local/include/SDL3/SDL_tray.h" 2 3
# 86 "/usr/local/include/SDL3/SDL.h" 2 3

# 1 "/usr/local/include/SDL3/SDL_version.h" 1 3
# 34 "/usr/local/include/SDL3/SDL_version.h" 3
# 1 "/usr/local/include/SDL3/SDL_begin_code.h" 1 3
# 35 "/usr/local/include/SDL3/SDL_version.h" 2 3


extern "C" {
# 148 "/usr/local/include/SDL3/SDL_version.h" 3
extern __attribute__ ((visibility("default"))) int SDL_GetVersion(void);
# 175 "/usr/local/include/SDL3/SDL_version.h" 3
extern __attribute__ ((visibility("default"))) const char * SDL_GetRevision(void);




}

# 1 "/usr/local/include/SDL3/SDL_close_code.h" 1 3
# 183 "/usr/local/include/SDL3/SDL_version.h" 2 3
# 88 "/usr/local/include/SDL3/SDL.h" 2 3

# 1 "/usr/local/include/SDL3/SDL_oldnames.h" 1 3
# 90 "/usr/local/include/SDL3/SDL.h" 2 3
# 4 "/home/luciferoussky72/Documents/Loam/include/loam/KeyboardMouse.hpp" 2


# 5 "/home/luciferoussky72/Documents/Loam/include/loam/KeyboardMouse.hpp"
namespace loam {



    enum class MouseButton {
        left_click = 1,
        middle_click,
        right_click,
        button_x1,
        button_x2
    };





    class KeyboardMouse {
    public:



        KeyboardMouse();




        ~KeyboardMouse();





        void update();






        [[nodiscard]] bool is_key_down(SDL_Scancode key) const;





        [[nodiscard]] bool is_key_pressed(SDL_Scancode key) const;





        [[nodiscard]] bool is_key_released(SDL_Scancode key) const;






        [[nodiscard]] bool is_mouse_button_down(MouseButton button) const;





        [[nodiscard]] bool is_mouse_button_pressed(MouseButton button) const;





        [[nodiscard]] bool is_mouse_button_released(MouseButton button) const;




        [[nodiscard]] float get_mouse_x() const {
            return mouse_x;
        }




        [[nodiscard]] float get_mouse_y() const {
            return mouse_y;
        }
    private:
        static bool keyboard_mouse_instance_exists_please_do_not_make_another_unless_you_want_to_summon_a_time_worm;

        float mouse_x = 0.0f;
        float mouse_y = 0.0f;
        Uint32 current_mouse_state;
        Uint32 previous_mouse_state = 0;

        const bool* current_key_state;
        bool previous_key_state[SDL_SCANCODE_COUNT] = {false};
    };
}
# 2 "/home/luciferoussky72/Documents/Loam/src/KeyboardMouse.cpp" 2

# 1 "/usr/include/c++/16/cstdlib" 1 3
# 46 "/usr/include/c++/16/cstdlib" 3
# 1 "/usr/include/x86_64-linux-gnu/c++/16/bits/c++config.h" 1 3
# 37 "/usr/include/x86_64-linux-gnu/c++/16/bits/c++config.h" 3
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wvariadic-macros"

#pragma GCC diagnostic ignored "-Wc++11-extensions"
#pragma GCC diagnostic ignored "-Wc++23-extensions"
# 342 "/usr/include/x86_64-linux-gnu/c++/16/bits/c++config.h" 3
namespace std
{
  typedef long unsigned int size_t;
  typedef long int ptrdiff_t;


  typedef decltype(nullptr) nullptr_t;


#pragma GCC visibility push(default)


  extern "C++" __attribute__ ((__noreturn__, __always_inline__))
  inline void __terminate() noexcept
  {
    void terminate() noexcept __attribute__ ((__noreturn__,__cold__));
    terminate();
  }
#pragma GCC visibility pop
}
# 375 "/usr/include/x86_64-linux-gnu/c++/16/bits/c++config.h" 3
namespace std
{
  inline namespace __cxx11 __attribute__((__abi_tag__ ("cxx11"))) { }
}
namespace __gnu_cxx
{
  inline namespace __cxx11 __attribute__((__abi_tag__ ("cxx11"))) { }
}
# 579 "/usr/include/x86_64-linux-gnu/c++/16/bits/c++config.h" 3
namespace std
{
#pragma GCC visibility push(default)




  __attribute__((__always_inline__))
  constexpr inline bool
  __is_constant_evaluated() noexcept
  {


    if consteval { return true; } else { return false; }






  }
#pragma GCC visibility pop
}
# 623 "/usr/include/x86_64-linux-gnu/c++/16/bits/c++config.h" 3
namespace std
{
#pragma GCC visibility push(default)

  extern "C++" __attribute__ ((__noreturn__)) __attribute__((__cold__))
  void
  __glibcxx_assert_fail
    (const char* __file, int __line, const char* __function,
     const char* __condition)
  noexcept;
#pragma GCC visibility pop
}
# 733 "/usr/include/x86_64-linux-gnu/c++/16/bits/c++config.h" 3
# 1 "/usr/include/x86_64-linux-gnu/c++/16/bits/os_defines.h" 1 3
# 734 "/usr/include/x86_64-linux-gnu/c++/16/bits/c++config.h" 2 3


# 1 "/usr/include/x86_64-linux-gnu/c++/16/bits/cpu_defines.h" 1 3
# 737 "/usr/include/x86_64-linux-gnu/c++/16/bits/c++config.h" 2 3
# 893 "/usr/include/x86_64-linux-gnu/c++/16/bits/c++config.h" 3
namespace __gnu_cxx
{
  typedef __decltype(0.0bf16) __bfloat16_t;
}
# 962 "/usr/include/x86_64-linux-gnu/c++/16/bits/c++config.h" 3
# 1 "/usr/include/c++/16/pstl/pstl_config.h" 1 3
# 963 "/usr/include/x86_64-linux-gnu/c++/16/bits/c++config.h" 2 3



#pragma GCC diagnostic pop
# 47 "/usr/include/c++/16/cstdlib" 2 3
# 80 "/usr/include/c++/16/cstdlib" 3
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wpedantic"

# 1 "/usr/include/stdlib.h" 1 3
# 26 "/usr/include/stdlib.h" 3
# 1 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 1 3
# 27 "/usr/include/stdlib.h" 2 3





# 1 "/usr/lib/gcc/x86_64-linux-gnu/16/include/stddef.h" 1 3
# 33 "/usr/include/stdlib.h" 2 3

extern "C" {





# 1 "/usr/include/x86_64-linux-gnu/bits/waitflags.h" 1 3
# 41 "/usr/include/stdlib.h" 2 3
# 1 "/usr/include/x86_64-linux-gnu/bits/waitstatus.h" 1 3
# 42 "/usr/include/stdlib.h" 2 3
# 59 "/usr/include/stdlib.h" 3
typedef struct
  {
    int quot;
    int rem;
  } div_t;



typedef struct
  {
    long int quot;
    long int rem;
  } ldiv_t;





__extension__ typedef struct
  {
    long long int quot;
    long long int rem;
  } lldiv_t;
# 98 "/usr/include/stdlib.h" 3
extern size_t __ctype_get_mb_cur_max (void) noexcept (true) ;



extern double atof (const char *__nptr)
     noexcept (true) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;

extern int atoi (const char *__nptr)
     noexcept (true) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;

extern long int atol (const char *__nptr)
     noexcept (true) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;



__extension__ extern long long int atoll (const char *__nptr)
     noexcept (true) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;



extern double strtod (const char *__restrict __nptr,
        char **__restrict __endptr)
     noexcept (true) __attribute__ ((__nonnull__ (1)));



extern float strtof (const char *__restrict __nptr,
       char **__restrict __endptr) noexcept (true) __attribute__ ((__nonnull__ (1)));

extern long double strtold (const char *__restrict __nptr,
       char **__restrict __endptr)
     noexcept (true) __attribute__ ((__nonnull__ (1)));
# 141 "/usr/include/stdlib.h" 3
extern _Float32 strtof32 (const char *__restrict __nptr,
     char **__restrict __endptr)
     noexcept (true) __attribute__ ((__nonnull__ (1)));



extern _Float64 strtof64 (const char *__restrict __nptr,
     char **__restrict __endptr)
     noexcept (true) __attribute__ ((__nonnull__ (1)));



extern _Float128 strtof128 (const char *__restrict __nptr,
       char **__restrict __endptr)
     noexcept (true) __attribute__ ((__nonnull__ (1)));



extern _Float32x strtof32x (const char *__restrict __nptr,
       char **__restrict __endptr)
     noexcept (true) __attribute__ ((__nonnull__ (1)));



extern _Float64x strtof64x (const char *__restrict __nptr,
       char **__restrict __endptr)
     noexcept (true) __attribute__ ((__nonnull__ (1)));
# 177 "/usr/include/stdlib.h" 3
extern long int strtol (const char *__restrict __nptr,
   char **__restrict __endptr, int __base)
     noexcept (true) __attribute__ ((__nonnull__ (1)));

extern unsigned long int strtoul (const char *__restrict __nptr,
      char **__restrict __endptr, int __base)
     noexcept (true) __attribute__ ((__nonnull__ (1)));



__extension__
extern long long int strtoq (const char *__restrict __nptr,
        char **__restrict __endptr, int __base)
     noexcept (true) __attribute__ ((__nonnull__ (1)));

__extension__
extern unsigned long long int strtouq (const char *__restrict __nptr,
           char **__restrict __endptr, int __base)
     noexcept (true) __attribute__ ((__nonnull__ (1)));




__extension__
extern long long int strtoll (const char *__restrict __nptr,
         char **__restrict __endptr, int __base)
     noexcept (true) __attribute__ ((__nonnull__ (1)));

__extension__
extern unsigned long long int strtoull (const char *__restrict __nptr,
     char **__restrict __endptr, int __base)
     noexcept (true) __attribute__ ((__nonnull__ (1)));






extern long int strtol (const char *__restrict __nptr, char **__restrict __endptr, int __base) noexcept (true) __asm__ ("" "__isoc23_strtol")


     __attribute__ ((__nonnull__ (1)));
extern unsigned long int strtoul (const char *__restrict __nptr, char **__restrict __endptr, int __base) noexcept (true) __asm__ ("" "__isoc23_strtoul")



     __attribute__ ((__nonnull__ (1)));

__extension__
extern long long int strtoq (const char *__restrict __nptr, char **__restrict __endptr, int __base) noexcept (true) __asm__ ("" "__isoc23_strtoll")


     __attribute__ ((__nonnull__ (1)));
__extension__
extern unsigned long long int strtouq (const char *__restrict __nptr, char **__restrict __endptr, int __base) noexcept (true) __asm__ ("" "__isoc23_strtoull")



     __attribute__ ((__nonnull__ (1)));

__extension__
extern long long int strtoll (const char *__restrict __nptr, char **__restrict __endptr, int __base) noexcept (true) __asm__ ("" "__isoc23_strtoll")


     __attribute__ ((__nonnull__ (1)));
__extension__
extern unsigned long long int strtoull (const char *__restrict __nptr, char **__restrict __endptr, int __base) noexcept (true) __asm__ ("" "__isoc23_strtoull")



     __attribute__ ((__nonnull__ (1)));
# 278 "/usr/include/stdlib.h" 3
extern int strfromd (char *__dest, size_t __size, const char *__format,
       double __f)
     noexcept (true) __attribute__ ((__nonnull__ (3)));

extern int strfromf (char *__dest, size_t __size, const char *__format,
       float __f)
     noexcept (true) __attribute__ ((__nonnull__ (3)));

extern int strfroml (char *__dest, size_t __size, const char *__format,
       long double __f)
     noexcept (true) __attribute__ ((__nonnull__ (3)));
# 298 "/usr/include/stdlib.h" 3
extern int strfromf32 (char *__dest, size_t __size, const char * __format,
         _Float32 __f)
     noexcept (true) __attribute__ ((__nonnull__ (3)));



extern int strfromf64 (char *__dest, size_t __size, const char * __format,
         _Float64 __f)
     noexcept (true) __attribute__ ((__nonnull__ (3)));



extern int strfromf128 (char *__dest, size_t __size, const char * __format,
   _Float128 __f)
     noexcept (true) __attribute__ ((__nonnull__ (3)));



extern int strfromf32x (char *__dest, size_t __size, const char * __format,
   _Float32x __f)
     noexcept (true) __attribute__ ((__nonnull__ (3)));



extern int strfromf64x (char *__dest, size_t __size, const char * __format,
   _Float64x __f)
     noexcept (true) __attribute__ ((__nonnull__ (3)));
# 340 "/usr/include/stdlib.h" 3
extern long int strtol_l (const char *__restrict __nptr,
     char **__restrict __endptr, int __base,
     locale_t __loc) noexcept (true) __attribute__ ((__nonnull__ (1, 4)));

extern unsigned long int strtoul_l (const char *__restrict __nptr,
        char **__restrict __endptr,
        int __base, locale_t __loc)
     noexcept (true) __attribute__ ((__nonnull__ (1, 4)));

__extension__
extern long long int strtoll_l (const char *__restrict __nptr,
    char **__restrict __endptr, int __base,
    locale_t __loc)
     noexcept (true) __attribute__ ((__nonnull__ (1, 4)));

__extension__
extern unsigned long long int strtoull_l (const char *__restrict __nptr,
       char **__restrict __endptr,
       int __base, locale_t __loc)
     noexcept (true) __attribute__ ((__nonnull__ (1, 4)));





extern long int strtol_l (const char *__restrict __nptr, char **__restrict __endptr, int __base, locale_t __loc) noexcept (true) __asm__ ("" "__isoc23_strtol_l")



     __attribute__ ((__nonnull__ (1, 4)));
extern unsigned long int strtoul_l (const char *__restrict __nptr, char **__restrict __endptr, int __base, locale_t __loc) noexcept (true) __asm__ ("" "__isoc23_strtoul_l")




     __attribute__ ((__nonnull__ (1, 4)));
__extension__
extern long long int strtoll_l (const char *__restrict __nptr, char **__restrict __endptr, int __base, locale_t __loc) noexcept (true) __asm__ ("" "__isoc23_strtoll_l")




     __attribute__ ((__nonnull__ (1, 4)));
__extension__
extern unsigned long long int strtoull_l (const char *__restrict __nptr, char **__restrict __endptr, int __base, locale_t __loc) noexcept (true) __asm__ ("" "__isoc23_strtoull_l")




     __attribute__ ((__nonnull__ (1, 4)));
# 415 "/usr/include/stdlib.h" 3
extern double strtod_l (const char *__restrict __nptr,
   char **__restrict __endptr, locale_t __loc)
     noexcept (true) __attribute__ ((__nonnull__ (1, 3)));

extern float strtof_l (const char *__restrict __nptr,
         char **__restrict __endptr, locale_t __loc)
     noexcept (true) __attribute__ ((__nonnull__ (1, 3)));

extern long double strtold_l (const char *__restrict __nptr,
         char **__restrict __endptr,
         locale_t __loc)
     noexcept (true) __attribute__ ((__nonnull__ (1, 3)));
# 436 "/usr/include/stdlib.h" 3
extern _Float32 strtof32_l (const char *__restrict __nptr,
       char **__restrict __endptr,
       locale_t __loc)
     noexcept (true) __attribute__ ((__nonnull__ (1, 3)));



extern _Float64 strtof64_l (const char *__restrict __nptr,
       char **__restrict __endptr,
       locale_t __loc)
     noexcept (true) __attribute__ ((__nonnull__ (1, 3)));



extern _Float128 strtof128_l (const char *__restrict __nptr,
         char **__restrict __endptr,
         locale_t __loc)
     noexcept (true) __attribute__ ((__nonnull__ (1, 3)));



extern _Float32x strtof32x_l (const char *__restrict __nptr,
         char **__restrict __endptr,
         locale_t __loc)
     noexcept (true) __attribute__ ((__nonnull__ (1, 3)));



extern _Float64x strtof64x_l (const char *__restrict __nptr,
         char **__restrict __endptr,
         locale_t __loc)
     noexcept (true) __attribute__ ((__nonnull__ (1, 3)));
# 505 "/usr/include/stdlib.h" 3
extern char *l64a (long int __n) noexcept (true) ;


extern long int a64l (const char *__s)
     noexcept (true) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;




# 1 "/usr/include/x86_64-linux-gnu/sys/types.h" 1 3
# 27 "/usr/include/x86_64-linux-gnu/sys/types.h" 3
extern "C" {





typedef __u_char u_char;
typedef __u_short u_short;
typedef __u_int u_int;
typedef __u_long u_long;
typedef __quad_t quad_t;
typedef __u_quad_t u_quad_t;
typedef __fsid_t fsid_t;


typedef __loff_t loff_t;




typedef __ino_t ino_t;






typedef __ino64_t ino64_t;




typedef __dev_t dev_t;




typedef __gid_t gid_t;




typedef __mode_t mode_t;




typedef __nlink_t nlink_t;




typedef __uid_t uid_t;





typedef __off_t off_t;






typedef __off64_t off64_t;




typedef __pid_t pid_t;





typedef __id_t id_t;




typedef __ssize_t ssize_t;





typedef __daddr_t daddr_t;
typedef __caddr_t caddr_t;





typedef __key_t key_t;




# 1 "/usr/include/x86_64-linux-gnu/bits/types/clock_t.h" 1 3






typedef __clock_t clock_t;
# 127 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3

# 1 "/usr/include/x86_64-linux-gnu/bits/types/clockid_t.h" 1 3






typedef __clockid_t clockid_t;
# 129 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3
# 1 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h" 1 3
# 10 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h" 3
typedef __time_t time_t;
# 130 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3
# 1 "/usr/include/x86_64-linux-gnu/bits/types/timer_t.h" 1 3






typedef __timer_t timer_t;
# 131 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3



typedef __useconds_t useconds_t;



typedef __suseconds_t suseconds_t;





# 1 "/usr/lib/gcc/x86_64-linux-gnu/16/include/stddef.h" 1 3
# 145 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3



typedef unsigned long int ulong;
typedef unsigned short int ushort;
typedef unsigned int uint;







typedef __uint8_t u_int8_t;
typedef __uint16_t u_int16_t;
typedef __uint32_t u_int32_t;
typedef __uint64_t u_int64_t;


typedef int register_t __attribute__ ((__mode__ (__word__)));
# 179 "/usr/include/x86_64-linux-gnu/sys/types.h" 3
# 1 "/usr/include/x86_64-linux-gnu/sys/select.h" 1 3
# 30 "/usr/include/x86_64-linux-gnu/sys/select.h" 3
# 1 "/usr/include/x86_64-linux-gnu/bits/select.h" 1 3
# 31 "/usr/include/x86_64-linux-gnu/sys/select.h" 2 3


# 1 "/usr/include/x86_64-linux-gnu/bits/types/sigset_t.h" 1 3



# 1 "/usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h" 1 3




typedef struct
{
  unsigned long int __val[(1024 / (8 * sizeof (unsigned long int)))];
} __sigset_t;
# 5 "/usr/include/x86_64-linux-gnu/bits/types/sigset_t.h" 2 3


typedef __sigset_t sigset_t;
# 34 "/usr/include/x86_64-linux-gnu/sys/select.h" 2 3



# 1 "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h" 1 3







struct timeval
{




  __time_t tv_sec;
  __suseconds_t tv_usec;

};
# 38 "/usr/include/x86_64-linux-gnu/sys/select.h" 2 3

# 1 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h" 1 3
# 11 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h" 3
struct timespec
{



  __time_t tv_sec;




  __syscall_slong_t tv_nsec;
# 31 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h" 3
};
# 40 "/usr/include/x86_64-linux-gnu/sys/select.h" 2 3
# 49 "/usr/include/x86_64-linux-gnu/sys/select.h" 3
typedef long int __fd_mask;
# 59 "/usr/include/x86_64-linux-gnu/sys/select.h" 3
typedef struct
  {



    __fd_mask fds_bits[1024 / (8 * (int) sizeof (__fd_mask))];





  } fd_set;






typedef __fd_mask fd_mask;
# 91 "/usr/include/x86_64-linux-gnu/sys/select.h" 3
extern "C" {
# 102 "/usr/include/x86_64-linux-gnu/sys/select.h" 3
extern int select (int __nfds, fd_set *__restrict __readfds,
     fd_set *__restrict __writefds,
     fd_set *__restrict __exceptfds,
     struct timeval *__restrict __timeout);
# 127 "/usr/include/x86_64-linux-gnu/sys/select.h" 3
extern int pselect (int __nfds, fd_set *__restrict __readfds,
      fd_set *__restrict __writefds,
      fd_set *__restrict __exceptfds,
      const struct timespec *__restrict __timeout,
      const __sigset_t *__restrict __sigmask);
# 153 "/usr/include/x86_64-linux-gnu/sys/select.h" 3
}
# 180 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3





typedef __blksize_t blksize_t;






typedef __blkcnt_t blkcnt_t;



typedef __fsblkcnt_t fsblkcnt_t;



typedef __fsfilcnt_t fsfilcnt_t;
# 219 "/usr/include/x86_64-linux-gnu/sys/types.h" 3
typedef __blkcnt64_t blkcnt64_t;
typedef __fsblkcnt64_t fsblkcnt64_t;
typedef __fsfilcnt64_t fsfilcnt64_t;





# 1 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 1 3
# 23 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3
# 1 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h" 1 3
# 44 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h" 3
# 1 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes-arch.h" 1 3
# 21 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes-arch.h" 3
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3
# 22 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes-arch.h" 2 3
# 45 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h" 2 3

# 1 "/usr/include/x86_64-linux-gnu/bits/atomic_wide_counter.h" 1 3
# 25 "/usr/include/x86_64-linux-gnu/bits/atomic_wide_counter.h" 3
typedef union
{
  __extension__ unsigned long long int __value64;
  struct
  {
    unsigned int __low;
    unsigned int __high;
  } __value32;
} __atomic_wide_counter;
# 47 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h" 2 3




typedef struct __pthread_internal_list
{
  struct __pthread_internal_list *__prev;
  struct __pthread_internal_list *__next;
} __pthread_list_t;

typedef struct __pthread_internal_slist
{
  struct __pthread_internal_slist *__next;
} __pthread_slist_t;
# 76 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h" 3
# 1 "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h" 1 3
# 22 "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h" 3
struct __pthread_mutex_s
{
  int __lock;
  unsigned int __count;
  int __owner;

  unsigned int __nusers;



  int __kind;

  short __spins;
  short __elision;
  __pthread_list_t __list;
# 53 "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h" 3
};
# 77 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h" 2 3
# 89 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h" 3
# 1 "/usr/include/x86_64-linux-gnu/bits/struct_rwlock.h" 1 3
# 23 "/usr/include/x86_64-linux-gnu/bits/struct_rwlock.h" 3
struct __pthread_rwlock_arch_t
{
  unsigned int __readers;
  unsigned int __writers;
  unsigned int __wrphase_futex;
  unsigned int __writers_futex;
  unsigned int __pad3;
  unsigned int __pad4;

  int __cur_writer;
  int __shared;
  signed char __rwelision;




  unsigned char __pad1[7];


  unsigned long int __pad2;


  unsigned int __flags;
# 55 "/usr/include/x86_64-linux-gnu/bits/struct_rwlock.h" 3
};
# 90 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h" 2 3




struct __pthread_cond_s
{
  __atomic_wide_counter __wseq;
  __atomic_wide_counter __g1_start;
  unsigned int __g_refs[2] ;
  unsigned int __g_size[2];
  unsigned int __g1_orig_size;
  unsigned int __wrefs;
  unsigned int __g_signals[2];
};

typedef unsigned int __tss_t;
typedef unsigned long int __thrd_t;

typedef struct
{
  int __data ;
} __once_flag;
# 24 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 2 3



typedef unsigned long int pthread_t;




typedef union
{
  char __size[4];
  int __align;
} pthread_mutexattr_t;




typedef union
{
  char __size[4];
  int __align;
} pthread_condattr_t;



typedef unsigned int pthread_key_t;



typedef int pthread_once_t;


union pthread_attr_t
{
  char __size[56];
  long int __align;
};

typedef union pthread_attr_t pthread_attr_t;




typedef union
{
  struct __pthread_mutex_s __data;
  char __size[40];
  long int __align;
} pthread_mutex_t;


typedef union
{
  struct __pthread_cond_s __data;
  char __size[48];
  __extension__ long long int __align;
} pthread_cond_t;





typedef union
{
  struct __pthread_rwlock_arch_t __data;
  char __size[56];
  long int __align;
} pthread_rwlock_t;

typedef union
{
  char __size[8];
  long int __align;
} pthread_rwlockattr_t;





typedef volatile int pthread_spinlock_t;




typedef union
{
  char __size[32];
  long int __align;
} pthread_barrier_t;

typedef union
{
  char __size[4];
  int __align;
} pthread_barrierattr_t;
# 228 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3


}
# 515 "/usr/include/stdlib.h" 2 3






extern long int random (void) noexcept (true);


extern void srandom (unsigned int __seed) noexcept (true);





extern char *initstate (unsigned int __seed, char *__statebuf,
   size_t __statelen) noexcept (true) __attribute__ ((__nonnull__ (2)));



extern char *setstate (char *__statebuf) noexcept (true) __attribute__ ((__nonnull__ (1)));







struct random_data
  {
    int32_t *fptr;
    int32_t *rptr;
    int32_t *state;
    int rand_type;
    int rand_deg;
    int rand_sep;
    int32_t *end_ptr;
  };

extern int random_r (struct random_data *__restrict __buf,
       int32_t *__restrict __result) noexcept (true) __attribute__ ((__nonnull__ (1, 2)));

extern int srandom_r (unsigned int __seed, struct random_data *__buf)
     noexcept (true) __attribute__ ((__nonnull__ (2)));

extern int initstate_r (unsigned int __seed, char *__restrict __statebuf,
   size_t __statelen,
   struct random_data *__restrict __buf)
     noexcept (true) __attribute__ ((__nonnull__ (2, 4)));

extern int setstate_r (char *__restrict __statebuf,
         struct random_data *__restrict __buf)
     noexcept (true) __attribute__ ((__nonnull__ (1, 2)));





extern int rand (void) noexcept (true);

extern void srand (unsigned int __seed) noexcept (true);



extern int rand_r (unsigned int *__seed) noexcept (true);







extern double drand48 (void) noexcept (true);
extern double erand48 (unsigned short int __xsubi[3]) noexcept (true) __attribute__ ((__nonnull__ (1)));


extern long int lrand48 (void) noexcept (true);
extern long int nrand48 (unsigned short int __xsubi[3])
     noexcept (true) __attribute__ ((__nonnull__ (1)));


extern long int mrand48 (void) noexcept (true);
extern long int jrand48 (unsigned short int __xsubi[3])
     noexcept (true) __attribute__ ((__nonnull__ (1)));


extern void srand48 (long int __seedval) noexcept (true);
extern unsigned short int *seed48 (unsigned short int __seed16v[3])
     noexcept (true) __attribute__ ((__nonnull__ (1)));
extern void lcong48 (unsigned short int __param[7]) noexcept (true) __attribute__ ((__nonnull__ (1)));





struct drand48_data
  {
    unsigned short int __x[3];
    unsigned short int __old_x[3];
    unsigned short int __c;
    unsigned short int __init;
    __extension__ unsigned long long int __a;

  };


extern int drand48_r (struct drand48_data *__restrict __buffer,
        double *__restrict __result) noexcept (true) __attribute__ ((__nonnull__ (1, 2)));
extern int erand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        double *__restrict __result) noexcept (true) __attribute__ ((__nonnull__ (1, 2)));


extern int lrand48_r (struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     noexcept (true) __attribute__ ((__nonnull__ (1, 2)));
extern int nrand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     noexcept (true) __attribute__ ((__nonnull__ (1, 2)));


extern int mrand48_r (struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     noexcept (true) __attribute__ ((__nonnull__ (1, 2)));
extern int jrand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     noexcept (true) __attribute__ ((__nonnull__ (1, 2)));


extern int srand48_r (long int __seedval, struct drand48_data *__buffer)
     noexcept (true) __attribute__ ((__nonnull__ (2)));

extern int seed48_r (unsigned short int __seed16v[3],
       struct drand48_data *__buffer) noexcept (true) __attribute__ ((__nonnull__ (1, 2)));

extern int lcong48_r (unsigned short int __param[7],
        struct drand48_data *__buffer)
     noexcept (true) __attribute__ ((__nonnull__ (1, 2)));


extern __uint32_t arc4random (void)
     noexcept (true) ;


extern void arc4random_buf (void *__buf, size_t __size)
     noexcept (true) __attribute__ ((__nonnull__ (1)));



extern __uint32_t arc4random_uniform (__uint32_t __upper_bound)
     noexcept (true) ;




extern void *malloc (size_t __size) noexcept (true) __attribute__ ((__malloc__))
     __attribute__ ((__alloc_size__ (1))) ;

extern void *calloc (size_t __nmemb, size_t __size)
     noexcept (true) __attribute__ ((__malloc__)) __attribute__ ((__alloc_size__ (1, 2))) ;






extern void *realloc (void *__ptr, size_t __size)
     noexcept (true) __attribute__ ((__warn_unused_result__)) __attribute__ ((__alloc_size__ (2)));


extern void free (void *__ptr) noexcept (true);







extern void *reallocarray (void *__ptr, size_t __nmemb, size_t __size)
     noexcept (true) __attribute__ ((__warn_unused_result__))
     __attribute__ ((__alloc_size__ (2, 3)))
    __attribute__ ((__malloc__ (__builtin_free, 1)));


extern void *reallocarray (void *__ptr, size_t __nmemb, size_t __size)
     noexcept (true) __attribute__ ((__malloc__ (reallocarray, 1)));



# 1 "/usr/include/alloca.h" 1 3
# 24 "/usr/include/alloca.h" 3
# 1 "/usr/lib/gcc/x86_64-linux-gnu/16/include/stddef.h" 1 3
# 25 "/usr/include/alloca.h" 2 3

extern "C" {





extern void *alloca (size_t __size) noexcept (true);





}
# 707 "/usr/include/stdlib.h" 2 3





extern void *valloc (size_t __size) noexcept (true) __attribute__ ((__malloc__))
     __attribute__ ((__alloc_size__ (1))) ;




extern int posix_memalign (void **__memptr, size_t __alignment, size_t __size)
     noexcept (true) __attribute__ ((__nonnull__ (1))) ;




extern void *aligned_alloc (size_t __alignment, size_t __size)
     noexcept (true) __attribute__ ((__malloc__)) __attribute__ ((__alloc_align__ (1)))
     __attribute__ ((__alloc_size__ (2))) ;



extern void abort (void) noexcept (true) __attribute__ ((__noreturn__));



extern int atexit (void (*__func) (void)) noexcept (true) __attribute__ ((__nonnull__ (1)));




extern "C++" int at_quick_exit (void (*__func) (void))
     noexcept (true) __asm ("at_quick_exit") __attribute__ ((__nonnull__ (1)));
# 749 "/usr/include/stdlib.h" 3
extern int on_exit (void (*__func) (int __status, void *__arg), void *__arg)
     noexcept (true) __attribute__ ((__nonnull__ (1)));





extern void exit (int __status) noexcept (true) __attribute__ ((__noreturn__));





extern void quick_exit (int __status) noexcept (true) __attribute__ ((__noreturn__));





extern void _Exit (int __status) noexcept (true) __attribute__ ((__noreturn__));




extern char *getenv (const char *__name) noexcept (true) __attribute__ ((__nonnull__ (1))) ;




extern char *secure_getenv (const char *__name)
     noexcept (true) __attribute__ ((__nonnull__ (1))) ;






extern int putenv (char *__string) noexcept (true) __attribute__ ((__nonnull__ (1)));





extern int setenv (const char *__name, const char *__value, int __replace)
     noexcept (true) __attribute__ ((__nonnull__ (2)));


extern int unsetenv (const char *__name) noexcept (true) __attribute__ ((__nonnull__ (1)));






extern int clearenv (void) noexcept (true);
# 814 "/usr/include/stdlib.h" 3
extern char *mktemp (char *__template) noexcept (true) __attribute__ ((__nonnull__ (1)));
# 827 "/usr/include/stdlib.h" 3
extern int mkstemp (char *__template) __attribute__ ((__nonnull__ (1))) ;
# 837 "/usr/include/stdlib.h" 3
extern int mkstemp64 (char *__template) __attribute__ ((__nonnull__ (1))) ;
# 849 "/usr/include/stdlib.h" 3
extern int mkstemps (char *__template, int __suffixlen) __attribute__ ((__nonnull__ (1))) ;
# 859 "/usr/include/stdlib.h" 3
extern int mkstemps64 (char *__template, int __suffixlen)
     __attribute__ ((__nonnull__ (1))) ;
# 870 "/usr/include/stdlib.h" 3
extern char *mkdtemp (char *__template) noexcept (true) __attribute__ ((__nonnull__ (1))) ;
# 881 "/usr/include/stdlib.h" 3
extern int mkostemp (char *__template, int __flags) __attribute__ ((__nonnull__ (1))) ;
# 891 "/usr/include/stdlib.h" 3
extern int mkostemp64 (char *__template, int __flags) __attribute__ ((__nonnull__ (1))) ;
# 901 "/usr/include/stdlib.h" 3
extern int mkostemps (char *__template, int __suffixlen, int __flags)
     __attribute__ ((__nonnull__ (1))) ;
# 913 "/usr/include/stdlib.h" 3
extern int mkostemps64 (char *__template, int __suffixlen, int __flags)
     __attribute__ ((__nonnull__ (1))) ;
# 923 "/usr/include/stdlib.h" 3
extern int system (const char *__command) ;





extern char *canonicalize_file_name (const char *__name)
     noexcept (true) __attribute__ ((__nonnull__ (1))) __attribute__ ((__malloc__))
     __attribute__ ((__malloc__ (__builtin_free, 1))) ;
# 940 "/usr/include/stdlib.h" 3
extern char *realpath (const char *__restrict __name,
         char *__restrict __resolved) noexcept (true) ;






typedef int (*__compar_fn_t) (const void *, const void *);


typedef __compar_fn_t comparison_fn_t;



typedef int (*__compar_d_fn_t) (const void *, const void *, void *);




extern void *bsearch (const void *__key, const void *__base,
        size_t __nmemb, size_t __size, __compar_fn_t __compar)
     __attribute__ ((__nonnull__ (1, 2, 5))) ;







extern void qsort (void *__base, size_t __nmemb, size_t __size,
     __compar_fn_t __compar) __attribute__ ((__nonnull__ (1, 4)));

extern void qsort_r (void *__base, size_t __nmemb, size_t __size,
       __compar_d_fn_t __compar, void *__arg)
  __attribute__ ((__nonnull__ (1, 4)));




extern int abs (int __x) noexcept (true) __attribute__ ((__const__)) ;
extern long int labs (long int __x) noexcept (true) __attribute__ ((__const__)) ;


__extension__ extern long long int llabs (long long int __x)
     noexcept (true) __attribute__ ((__const__)) ;






extern div_t div (int __numer, int __denom)
     noexcept (true) __attribute__ ((__const__)) ;
extern ldiv_t ldiv (long int __numer, long int __denom)
     noexcept (true) __attribute__ ((__const__)) ;


__extension__ extern lldiv_t lldiv (long long int __numer,
        long long int __denom)
     noexcept (true) __attribute__ ((__const__)) ;
# 1012 "/usr/include/stdlib.h" 3
extern char *ecvt (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign) noexcept (true) __attribute__ ((__nonnull__ (3, 4))) ;




extern char *fcvt (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign) noexcept (true) __attribute__ ((__nonnull__ (3, 4))) ;




extern char *gcvt (double __value, int __ndigit, char *__buf)
     noexcept (true) __attribute__ ((__nonnull__ (3))) ;




extern char *qecvt (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign)
     noexcept (true) __attribute__ ((__nonnull__ (3, 4))) ;
extern char *qfcvt (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign)
     noexcept (true) __attribute__ ((__nonnull__ (3, 4))) ;
extern char *qgcvt (long double __value, int __ndigit, char *__buf)
     noexcept (true) __attribute__ ((__nonnull__ (3))) ;




extern int ecvt_r (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign, char *__restrict __buf,
     size_t __len) noexcept (true) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int fcvt_r (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign, char *__restrict __buf,
     size_t __len) noexcept (true) __attribute__ ((__nonnull__ (3, 4, 5)));

extern int qecvt_r (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign,
      char *__restrict __buf, size_t __len)
     noexcept (true) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int qfcvt_r (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign,
      char *__restrict __buf, size_t __len)
     noexcept (true) __attribute__ ((__nonnull__ (3, 4, 5)));





extern int mblen (const char *__s, size_t __n) noexcept (true);


extern int mbtowc (wchar_t *__restrict __pwc,
     const char *__restrict __s, size_t __n) noexcept (true);


extern int wctomb (char *__s, wchar_t __wchar) noexcept (true);



extern size_t mbstowcs (wchar_t *__restrict __pwcs,
   const char *__restrict __s, size_t __n) noexcept (true)
    __attribute__ ((__access__ (__read_only__, 2)));

extern size_t wcstombs (char *__restrict __s,
   const wchar_t *__restrict __pwcs, size_t __n)
     noexcept (true)
  __attribute__ ((__access__ (__write_only__, 1, 3)))
  __attribute__ ((__access__ (__read_only__, 2)));






extern int rpmatch (const char *__response) noexcept (true) __attribute__ ((__nonnull__ (1))) ;
# 1099 "/usr/include/stdlib.h" 3
extern int getsubopt (char **__restrict __optionp,
        char *const *__restrict __tokens,
        char **__restrict __valuep)
     noexcept (true) __attribute__ ((__nonnull__ (1, 2, 3))) ;







extern int posix_openpt (int __oflag) ;







extern int grantpt (int __fd) noexcept (true);



extern int unlockpt (int __fd) noexcept (true);




extern char *ptsname (int __fd) noexcept (true) ;






extern int ptsname_r (int __fd, char *__buf, size_t __buflen)
     noexcept (true) __attribute__ ((__nonnull__ (2))) __attribute__ ((__access__ (__write_only__, 2, 3)));


extern int getpt (void);






extern int getloadavg (double __loadavg[], int __nelem)
     noexcept (true) __attribute__ ((__nonnull__ (1)));
# 1155 "/usr/include/stdlib.h" 3
# 1 "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h" 1 3
# 1156 "/usr/include/stdlib.h" 2 3
# 1167 "/usr/include/stdlib.h" 3
}
# 84 "/usr/include/c++/16/cstdlib" 2 3

 
# 85 "/usr/include/c++/16/cstdlib" 3
#pragma GCC diagnostic pop

# 1 "/usr/include/c++/16/bits/std_abs.h" 1 3
# 39 "/usr/include/c++/16/bits/std_abs.h" 3
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wpedantic"
#pragma GCC diagnostic ignored "-Wlong-long"
# 52 "/usr/include/c++/16/bits/std_abs.h" 3
extern "C++"
{
namespace std __attribute__ ((__visibility__ ("default")))
{


  using ::abs;


  inline long
  abs(long __i) { return __builtin_labs(__i); }



  inline long long
  abs(long long __x) { return __builtin_llabs (__x); }
# 76 "/usr/include/c++/16/bits/std_abs.h" 3
  inline constexpr double
  abs(double __x)
  { return __builtin_fabs(__x); }

  inline constexpr float
  abs(float __x)
  { return __builtin_fabsf(__x); }

  inline constexpr long double
  abs(long double __x)
  { return __builtin_fabsl(__x); }
# 109 "/usr/include/c++/16/bits/std_abs.h" 3
  __extension__ inline constexpr __int128
  abs(__int128 __x) { return __x >= 0 ? __x : -__x; }



  constexpr _Float16
  abs(_Float16 __x)
  { return _Float16(__builtin_fabsf(__x)); }



  constexpr _Float32
  abs(_Float32 __x)
  { return __builtin_fabsf(__x); }



  constexpr _Float64
  abs(_Float64 __x)
  { return __builtin_fabs(__x); }







  constexpr _Float128
  abs(_Float128 __x)
  { return __builtin_fabsf128(__x); }



  constexpr __gnu_cxx::__bfloat16_t
  abs(__gnu_cxx::__bfloat16_t __x)
  { return __gnu_cxx::__bfloat16_t(__builtin_fabsf(__x)); }



  __extension__ inline constexpr
  __float128
  abs(__float128 __x)
  {



    return __builtin_fabsf128(__x);




  }



}
}

#pragma GCC diagnostic pop
# 88 "/usr/include/c++/16/cstdlib" 2 3
# 131 "/usr/include/c++/16/cstdlib" 3
extern "C++"
{
namespace std __attribute__ ((__visibility__ ("default")))
{


  using ::div_t;
  using ::ldiv_t;

  using ::abort;

  using ::aligned_alloc;

  using ::atexit;


  using ::at_quick_exit;


  using ::atof;
  using ::atoi;
  using ::atol;
  using ::bsearch;
  using ::calloc;
  using ::div;
  using ::exit;
  using ::free;
  using ::getenv;
  using ::labs;
  using ::ldiv;
  using ::malloc;

  using ::mblen;
  using ::mbstowcs;
  using ::mbtowc;

  using ::qsort;


  using ::quick_exit;


  using ::rand;
  using ::realloc;
  using ::srand;
  using ::strtod;
  using ::strtol;
  using ::strtoul;
  using ::system;

  using ::wcstombs;
  using ::wctomb;



  inline ldiv_t
  div(long __i, long __j) noexcept { return ldiv(__i, __j); }




}
# 205 "/usr/include/c++/16/cstdlib" 3
namespace __gnu_cxx __attribute__ ((__visibility__ ("default")))
{



  using ::lldiv_t;





  using ::_Exit;



#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wlong-long"
  using ::llabs;

  inline lldiv_t
  div(long long __n, long long __d)
  { lldiv_t __q; __q.quot = __n / __d; __q.rem = __n % __d; return __q; }

  using ::lldiv;
#pragma GCC diagnostic pop
# 240 "/usr/include/c++/16/cstdlib" 3
  using ::atoll;
  using ::strtoll;
  using ::strtoull;

  using ::strtof;
  using ::strtold;


}

namespace std
{

  using ::__gnu_cxx::lldiv_t;

  using ::__gnu_cxx::_Exit;

  using ::__gnu_cxx::llabs;
  using ::__gnu_cxx::div;
  using ::__gnu_cxx::lldiv;

  using ::__gnu_cxx::atoll;
  using ::__gnu_cxx::strtof;
  using ::__gnu_cxx::strtoll;
  using ::__gnu_cxx::strtoull;
  using ::__gnu_cxx::strtold;
}
# 284 "/usr/include/c++/16/cstdlib" 3
}
# 4 "/home/luciferoussky72/Documents/Loam/src/KeyboardMouse.cpp" 2
# 1 "/usr/include/c++/16/cstring" 1 3
# 47 "/usr/include/c++/16/cstring" 3
# 1 "/usr/include/c++/16/bits/version.h" 1 3
# 48 "/usr/include/c++/16/cstring" 2 3
# 74 "/usr/include/c++/16/cstring" 3
extern "C++"
{
namespace std __attribute__ ((__visibility__ ("default")))
{


  using ::memchr;
  using ::memcmp;
  using ::memcpy;
  using ::memmove;
  using ::memset;
  using ::strcat;
  using ::strcmp;
  using ::strcoll;
  using ::strcpy;
  using ::strcspn;
  using ::strerror;
  using ::strlen;
  using ::strncat;
  using ::strncmp;
  using ::strncpy;
  using ::strspn;

  using ::strtok;

  using ::strxfrm;
  using ::strchr;
  using ::strpbrk;
  using ::strrchr;
  using ::strstr;
# 127 "/usr/include/c++/16/cstring" 3

}
}
# 5 "/home/luciferoussky72/Documents/Loam/src/KeyboardMouse.cpp" 2


# 6 "/home/luciferoussky72/Documents/Loam/src/KeyboardMouse.cpp"
namespace loam {
    KeyboardMouse::KeyboardMouse() {
        if (keyboard_mouse_instance_exists_please_do_not_make_another_unless_you_want_to_summon_a_time_worm) {
            SDL_Log("You can't make more than one KeyboardMouse instance!");
            std::abort();
        }
        keyboard_mouse_instance_exists_please_do_not_make_another_unless_you_want_to_summon_a_time_worm = true;
        current_key_state = SDL_GetKeyboardState(nullptr);

        current_mouse_state = SDL_GetMouseState(&mouse_x, &mouse_y);
    }

    KeyboardMouse::~KeyboardMouse() {
        keyboard_mouse_instance_exists_please_do_not_make_another_unless_you_want_to_summon_a_time_worm = false;
    }

    void KeyboardMouse::update() {
        std::memcpy(previous_key_state, current_key_state, SDL_SCANCODE_COUNT);
        current_key_state = SDL_GetKeyboardState(nullptr);

        previous_mouse_state = current_mouse_state;
        current_mouse_state = SDL_GetMouseState(&mouse_x, &mouse_y);
    }

    bool KeyboardMouse::is_key_down(SDL_Scancode key) const {
        return current_key_state[key];
    }

    bool KeyboardMouse::is_key_pressed(SDL_Scancode key) const {
        return current_key_state[key] and !previous_key_state[key];
    }

    bool KeyboardMouse::is_key_released(SDL_Scancode key) const {
        return !current_key_state[key] and previous_key_state[key];
    }

    bool KeyboardMouse::is_mouse_button_down(MouseButton button) const {
        return current_mouse_state & 
# 43 "/home/luciferoussky72/Documents/Loam/src/KeyboardMouse.cpp" 3
                                    (1u << ((
# 43 "/home/luciferoussky72/Documents/Loam/src/KeyboardMouse.cpp"
                                    static_cast<uint>(button)
# 43 "/home/luciferoussky72/Documents/Loam/src/KeyboardMouse.cpp" 3
                                    )-1))
# 43 "/home/luciferoussky72/Documents/Loam/src/KeyboardMouse.cpp"
                                                                              ;
    }

    bool KeyboardMouse::is_mouse_button_pressed(MouseButton button) const {
        return (current_mouse_state & 
# 47 "/home/luciferoussky72/Documents/Loam/src/KeyboardMouse.cpp" 3
                                     (1u << ((
# 47 "/home/luciferoussky72/Documents/Loam/src/KeyboardMouse.cpp"
                                     static_cast<uint>(button)
# 47 "/home/luciferoussky72/Documents/Loam/src/KeyboardMouse.cpp" 3
                                     )-1))
# 47 "/home/luciferoussky72/Documents/Loam/src/KeyboardMouse.cpp"
                                                                               ) and
               !(previous_mouse_state & 
# 48 "/home/luciferoussky72/Documents/Loam/src/KeyboardMouse.cpp" 3
                                       (1u << ((
# 48 "/home/luciferoussky72/Documents/Loam/src/KeyboardMouse.cpp"
                                       static_cast<uint>(button)
# 48 "/home/luciferoussky72/Documents/Loam/src/KeyboardMouse.cpp" 3
                                       )-1))
# 48 "/home/luciferoussky72/Documents/Loam/src/KeyboardMouse.cpp"
                                                                                 );
    }

    bool KeyboardMouse::is_mouse_button_released(MouseButton button) const {
        return !(current_mouse_state & 
# 52 "/home/luciferoussky72/Documents/Loam/src/KeyboardMouse.cpp" 3
                                      (1u << ((
# 52 "/home/luciferoussky72/Documents/Loam/src/KeyboardMouse.cpp"
                                      static_cast<uint>(button)
# 52 "/home/luciferoussky72/Documents/Loam/src/KeyboardMouse.cpp" 3
                                      )-1))
# 52 "/home/luciferoussky72/Documents/Loam/src/KeyboardMouse.cpp"
                                                                                ) and
               (previous_mouse_state & 
# 53 "/home/luciferoussky72/Documents/Loam/src/KeyboardMouse.cpp" 3
                                      (1u << ((
# 53 "/home/luciferoussky72/Documents/Loam/src/KeyboardMouse.cpp"
                                      static_cast<uint>(button)
# 53 "/home/luciferoussky72/Documents/Loam/src/KeyboardMouse.cpp" 3
                                      )-1))
# 53 "/home/luciferoussky72/Documents/Loam/src/KeyboardMouse.cpp"
                                                                                );
    }
}
