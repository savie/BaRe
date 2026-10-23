.class public abstract Lcb1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Ljava/util/Set;

.field public static final b:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    const-string v6, "exp"

    .line 2
    .line 3
    const-string v7, "extra"

    .line 4
    .line 5
    const-string v0, "app"

    .line 6
    .line 7
    const-string v1, "splits"

    .line 8
    .line 9
    const-string v2, "libs"

    .line 10
    .line 11
    const-string v3, "dat"

    .line 12
    .line 13
    const-string v4, "extdat"

    .line 14
    .line 15
    const-string v5, "med"

    .line 16
    .line 17
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lx50;->A0([Ljava/lang/Object;)Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcb1;->a:Ljava/util/Set;

    .line 26
    .line 27
    const-string v0, "fld"

    .line 28
    .line 29
    const-string v1, "flm"

    .line 30
    .line 31
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Lx50;->A0([Ljava/lang/Object;)Ljava/util/Set;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lcb1;->b:Ljava/util/Set;

    .line 40
    .line 41
    return-void
.end method

.method public static a(Ljava/lang/String;Z)Lva1;
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-nez p1, :cond_6

    .line 6
    .line 7
    const-string p1, "cloud-diagnostics"

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-static {p0, p1, v1}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    invoke-static {p0}, Lcb1;->b(Ljava/lang/String;)Lva1;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v2, " ("

    .line 22
    .line 23
    const/4 v3, 0x6

    .line 24
    const/4 v4, 0x0

    .line 25
    const/16 v5, 0x29

    .line 26
    .line 27
    if-nez p1, :cond_2

    .line 28
    .line 29
    :cond_1
    move-object p1, v0

    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const/16 v6, 0x2e

    .line 32
    .line 33
    invoke-static {v6, v4, v3, p0}, Lnq7;->k0(CIILjava/lang/CharSequence;)I

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    invoke-static {v6, v2, v4, v4, v3}, Lnq7;->h0(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    const-string v8, " (id-"

    .line 46
    .line 47
    invoke-static {v3, v6, v8}, Lnq7;->l0(ILjava/lang/CharSequence;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    if-lez v7, :cond_1

    .line 52
    .line 53
    if-le v8, v7, :cond_1

    .line 54
    .line 55
    add-int/lit8 v7, v8, -0x1

    .line 56
    .line 57
    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    if-ne v7, v5, :cond_1

    .line 62
    .line 63
    invoke-static {v6, v5}, Lnq7;->b0(Ljava/lang/String;C)Z

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    if-eqz v7, :cond_1

    .line 68
    .line 69
    add-int/lit8 v8, v8, 0x5

    .line 70
    .line 71
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    sub-int/2addr v6, v1

    .line 76
    if-ge v8, v6, :cond_1

    .line 77
    .line 78
    :goto_0
    if-eqz p1, :cond_3

    .line 79
    .line 80
    return-object p1

    .line 81
    :cond_3
    invoke-static {p0, v5}, Lnq7;->b0(Ljava/lang/String;C)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-nez p1, :cond_4

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_4
    invoke-static {p0, v2, v4, v4, v3}, Lnq7;->h0(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-gtz p1, :cond_5

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_5
    invoke-virtual {p0, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-static {p0}, Lcb1;->b(Ljava/lang/String;)Lva1;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    return-object p0

    .line 104
    :cond_6
    :goto_1
    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lva1;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x6

    .line 3
    const/16 v2, 0x2e

    .line 4
    .line 5
    invoke-static {v2, v0, v1, p0}, Lnq7;->k0(CIILjava/lang/CharSequence;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_2

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/lit8 v1, v1, -0x1

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    sget-object v0, Lcb1;->a:Ljava/util/Set;

    .line 27
    .line 28
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    sget-object p0, Lva1;->APPS:Lva1;

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_1
    sget-object v0, Lcb1;->b:Ljava/util/Set;

    .line 38
    .line 39
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-eqz p0, :cond_2

    .line 44
    .line 45
    sget-object p0, Lva1;->FOLDERS:Lva1;

    .line 46
    .line 47
    return-object p0

    .line 48
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 49
    return-object p0
.end method
