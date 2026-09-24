.class public abstract Lec;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lib;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "x"

    .line 2
    .line 3
    const-string v1, "y"

    .line 4
    .line 5
    const-string v2, "k"

    .line 6
    .line 7
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lib;->k([Ljava/lang/String;)Lib;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lec;->a:Lib;

    .line 16
    .line 17
    return-void
.end method

.method public static a(Lcn4;Le25;)Lzq8;
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcn4;->v()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x3

    .line 11
    const/4 v3, 0x1

    .line 12
    if-ne v1, v3, :cond_2

    .line 13
    .line 14
    invoke-virtual {p0}, Lcn4;->a()V

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-virtual {p0}, Lcn4;->m()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Lcn4;->v()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-ne v1, v2, :cond_0

    .line 28
    .line 29
    move v8, v3

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    const/4 v1, 0x0

    .line 32
    move v8, v1

    .line 33
    :goto_1
    invoke-static {}, Lmi8;->c()F

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    sget-object v7, Lus2;->c:Lus2;

    .line 38
    .line 39
    const/4 v9, 0x0

    .line 40
    move-object v4, p0

    .line 41
    move-object v5, p1

    .line 42
    invoke-static/range {v4 .. v9}, Lyo4;->b(Lul4;Le25;FLcj8;ZZ)Lwo4;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    new-instance p1, Liy5;

    .line 47
    .line 48
    invoke-direct {p1, v5, p0}, Liy5;-><init>(Le25;Lwo4;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-object p0, v4

    .line 55
    move-object p1, v5

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    move-object v4, p0

    .line 58
    invoke-virtual {v4}, Lcn4;->g()V

    .line 59
    .line 60
    .line 61
    invoke-static {v0}, Lzo4;->b(Ljava/util/ArrayList;)V

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_2
    move-object v4, p0

    .line 66
    new-instance p0, Lwo4;

    .line 67
    .line 68
    invoke-static {}, Lmi8;->c()F

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    invoke-static {v4, p1}, Lgn4;->b(Lul4;F)Landroid/graphics/PointF;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-direct {p0, p1}, Lwo4;-><init>(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    :goto_2
    new-instance p0, Lzq8;

    .line 83
    .line 84
    invoke-direct {p0, v0, v2}, Lzq8;-><init>(Ljava/lang/Object;I)V

    .line 85
    .line 86
    .line 87
    return-object p0
.end method

.method public static b(Lcn4;Le25;)Loc;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcn4;->b()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x0

    .line 6
    move-object v2, v0

    .line 7
    move v3, v1

    .line 8
    move-object v1, v2

    .line 9
    :goto_0
    invoke-virtual {p0}, Lcn4;->v()I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    const/4 v5, 0x4

    .line 14
    if-eq v4, v5, :cond_5

    .line 15
    .line 16
    sget-object v4, Lec;->a:Lib;

    .line 17
    .line 18
    invoke-virtual {p0, v4}, Lcn4;->A(Lib;)I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_4

    .line 23
    .line 24
    const/4 v5, 0x6

    .line 25
    const/4 v6, 0x1

    .line 26
    if-eq v4, v6, :cond_2

    .line 27
    .line 28
    const/4 v7, 0x2

    .line 29
    if-eq v4, v7, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0}, Lcn4;->D()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcn4;->G()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcn4;->v()I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-ne v4, v5, :cond_1

    .line 43
    .line 44
    invoke-virtual {p0}, Lcn4;->G()V

    .line 45
    .line 46
    .line 47
    :goto_1
    move v3, v6

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-static {p0, p1, v6}, Lsz8;->O(Lul4;Le25;Z)Lbc;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {p0}, Lcn4;->v()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-ne v4, v5, :cond_3

    .line 59
    .line 60
    invoke-virtual {p0}, Lcn4;->G()V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    invoke-static {p0, p1, v6}, Lsz8;->O(Lul4;Le25;Z)Lbc;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    goto :goto_0

    .line 69
    :cond_4
    invoke-static {p0, p1}, Lec;->a(Lcn4;Le25;)Lzq8;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    goto :goto_0

    .line 74
    :cond_5
    invoke-virtual {p0}, Lcn4;->h()V

    .line 75
    .line 76
    .line 77
    if-eqz v3, :cond_6

    .line 78
    .line 79
    const-string p0, "Lottie doesn\'t support expressions."

    .line 80
    .line 81
    invoke-virtual {p1, p0}, Le25;->a(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :cond_6
    if-eqz v0, :cond_7

    .line 85
    .line 86
    return-object v0

    .line 87
    :cond_7
    new-instance p0, Lic;

    .line 88
    .line 89
    invoke-direct {p0, v1, v2}, Lic;-><init>(Lbc;Lbc;)V

    .line 90
    .line 91
    .line 92
    return-object p0
.end method
