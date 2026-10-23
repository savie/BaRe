.class public abstract Lg44;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Ljava/lang/reflect/Method;

.field public static final b:Ljava/lang/reflect/Method;

.field public static final c:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    :try_start_0
    const-string v0, "android.os.ServiceManager"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 8
    .line 9
    const/16 v2, 0x1c

    .line 10
    .line 11
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 12
    .line 13
    const-class v4, Landroid/os/IBinder;

    .line 14
    .line 15
    const/4 v5, 0x1

    .line 16
    const-string v6, "addService"

    .line 17
    .line 18
    const-class v7, Ljava/lang/String;

    .line 19
    .line 20
    if-lt v1, v2, :cond_0

    .line 21
    .line 22
    const/4 v1, 0x4

    .line 23
    :try_start_1
    new-array v1, v1, [Ljava/lang/Class;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    aput-object v7, v1, v2

    .line 27
    .line 28
    aput-object v4, v1, v5

    .line 29
    .line 30
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 31
    .line 32
    const/4 v8, 0x2

    .line 33
    aput-object v2, v1, v8

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    aput-object v3, v1, v2

    .line 37
    .line 38
    invoke-virtual {v0, v6, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    sput-object v1, Lg44;->a:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 43
    .line 44
    :catch_0
    :cond_0
    :try_start_2
    sget-object v1, Lg44;->a:Ljava/lang/reflect/Method;

    .line 45
    .line 46
    if-nez v1, :cond_1

    .line 47
    .line 48
    filled-new-array {v7, v4}, [Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v6, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    sput-object v0, Lg44;->a:Ljava/lang/reflect/Method;

    .line 57
    .line 58
    :cond_1
    const-class v0, Landroid/content/ContextWrapper;

    .line 59
    .line 60
    const-string v1, "attachBaseContext"

    .line 61
    .line 62
    const-class v2, Landroid/content/Context;

    .line 63
    .line 64
    filled-new-array {v2}, [Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    sput-object v0, Lg44;->b:Ljava/lang/reflect/Method;

    .line 73
    .line 74
    invoke-virtual {v0, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 75
    .line 76
    .line 77
    const-string v0, "android.ddm.DdmHandleAppName"

    .line 78
    .line 79
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    const-string v1, "setAppName"

    .line 84
    .line 85
    filled-new-array {v7, v3}, [Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    sput-object v0, Lg44;->c:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_2 .. :try_end_2} :catch_1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :catch_1
    move-exception v0

    .line 97
    const-string v1, "IPC"

    .line 98
    .line 99
    invoke-static {v1, v0}, Lji8;->k(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 100
    .line 101
    .line 102
    :goto_0
    return-void
.end method
