.class public abstract Lu86;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lu86;->a:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ls86;

    .line 3
    .line 4
    invoke-direct {v1, p0}, Ls86;-><init>(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Ljava/lang/String;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object v1, Lu86;->a:Ljava/lang/ThreadLocal;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Ljava/util/Map;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Ljava/lang/String;

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    new-instance v1, Lt86;

    .line 36
    .line 37
    invoke-direct {v1, p0}, Lt86;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    move-object v1, p0

    .line 45
    check-cast v1, Ljava/lang/String;

    .line 46
    .line 47
    :goto_0
    if-eqz v1, :cond_7

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    const/4 v2, 0x4

    .line 54
    if-eq p0, v2, :cond_2

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    const/16 v2, 0x74

    .line 62
    .line 63
    if-eq p0, v2, :cond_3

    .line 64
    .line 65
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    const/16 v2, 0x54

    .line 70
    .line 71
    if-ne p0, v2, :cond_7

    .line 72
    .line 73
    :cond_3
    const/4 p0, 0x1

    .line 74
    invoke-virtual {v1, p0}, Ljava/lang/String;->charAt(I)C

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    const/16 v3, 0x72

    .line 79
    .line 80
    if-eq v2, v3, :cond_4

    .line 81
    .line 82
    invoke-virtual {v1, p0}, Ljava/lang/String;->charAt(I)C

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    const/16 v3, 0x52

    .line 87
    .line 88
    if-ne v2, v3, :cond_7

    .line 89
    .line 90
    :cond_4
    const/4 v2, 0x2

    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    const/16 v4, 0x75

    .line 96
    .line 97
    if-eq v3, v4, :cond_5

    .line 98
    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    const/16 v3, 0x55

    .line 104
    .line 105
    if-ne v2, v3, :cond_7

    .line 106
    .line 107
    :cond_5
    const/4 v2, 0x3

    .line 108
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    const/16 v4, 0x65

    .line 113
    .line 114
    if-eq v3, v4, :cond_6

    .line 115
    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    .line 117
    .line 118
    .line 119
    move-result v1
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    const/16 v2, 0x45

    .line 121
    .line 122
    if-ne v1, v2, :cond_7

    .line 123
    .line 124
    :cond_6
    return p0

    .line 125
    :catch_0
    :cond_7
    :goto_1
    return v0
.end method
