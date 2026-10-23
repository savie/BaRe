.class public final synthetic Lc76;
.super Lcu3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# static fields
.field public static final a:Lc76;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lc76;

    .line 2
    .line 3
    const-string v4, "decodePrivilegedWifiSlice(Ljava/lang/Object;)Ljava/util/List;"

    .line 4
    .line 5
    const/4 v5, 0x1

    .line 6
    const/4 v1, 0x1

    .line 7
    const-class v2, Lf76;

    .line 8
    .line 9
    const-string v3, "decodePrivilegedWifiSlice"

    .line 10
    .line 11
    invoke-direct/range {v0 .. v5}, Lcu3;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lc76;->a:Lc76;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const-string v0, "getList"

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    instance-of p1, p0, Ljava/util/List;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    check-cast p0, Ljava/util/List;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object p0, v1

    .line 27
    :goto_0
    if-eqz p0, :cond_4

    .line 28
    .line 29
    new-instance p1, Ljava/util/ArrayList;

    .line 30
    .line 31
    const/16 v0, 0xa

    .line 32
    .line 33
    invoke-static {p0, v0}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 38
    .line 39
    .line 40
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    instance-of v2, v0, Landroid/net/wifi/WifiConfiguration;

    .line 55
    .line 56
    if-eqz v2, :cond_1

    .line 57
    .line 58
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_1
    move-object v0, v1

    .line 62
    :goto_2
    if-eqz v0, :cond_2

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    new-instance p0, Ljava/lang/ReflectiveOperationException;

    .line 69
    .line 70
    const-string p1, "getList contained an unexpected value"

    .line 71
    .line 72
    invoke-direct {p0, p1}, Ljava/lang/ReflectiveOperationException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p0

    .line 76
    :cond_3
    return-object p1

    .line 77
    :cond_4
    new-instance p0, Ljava/lang/ReflectiveOperationException;

    .line 78
    .line 79
    const-string p1, "getList did not return a list"

    .line 80
    .line 81
    invoke-direct {p0, p1}, Ljava/lang/ReflectiveOperationException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p0
.end method
