.class public Lxf8;
.super Lyq5;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxf8$a;
    }
.end annotation


# instance fields
.field private g:Ljava/lang/String;

.field private h:I

.field private i:Lv64$c;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lyq5;-><init>()V

    return-void
.end method

.method public constructor <init>(Lvo1;Ljava/lang/String;ILv64$c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lyq5;-><init>(Lyq5;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lxf8;->g:Ljava/lang/String;

    .line 5
    .line 6
    iput p3, p0, Lxf8;->h:I

    .line 7
    .line 8
    iput-object p4, p0, Lxf8;->i:Lv64$c;

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic i(Lxf8;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lxf8;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic j(Lxf8;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lxf8;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic k(Lxf8;)I
    .locals 0

    .line 1
    iget p0, p0, Lxf8;->h:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic l(Lxf8;I)I
    .locals 0

    .line 1
    iput p1, p0, Lxf8;->h:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic m(Lxf8;)Lv64$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lxf8;->i:Lv64$c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic n(Lxf8;Lv64$c;)Lv64$c;
    .locals 0

    .line 1
    iput-object p1, p0, Lxf8;->i:Lv64$c;

    .line 2
    .line 3
    return-object p1
.end method

.method public static o()Lxf8$a;
    .locals 1

    .line 1
    new-instance v0, Lxf8$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lxf8$a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lxf8;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    invoke-super {p0, p1}, Lyq5;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_2

    .line 16
    .line 17
    return v2

    .line 18
    :cond_2
    check-cast p1, Lxf8;

    .line 19
    .line 20
    iget-object v1, p0, Lxf8;->g:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v3, p1, Lxf8;->g:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    iget v1, p0, Lxf8;->h:I

    .line 31
    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iget v3, p1, Lxf8;->h:I

    .line 37
    .line 38
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    iget-object p0, p0, Lxf8;->i:Lv64$c;

    .line 49
    .line 50
    iget-object p1, p1, Lxf8;->i:Lv64$c;

    .line 51
    .line 52
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    if-eqz p0, :cond_3

    .line 57
    .line 58
    return v0

    .line 59
    :cond_3
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 1
    invoke-super {p0}, Lyq5;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lxf8;->g:Ljava/lang/String;

    .line 10
    .line 11
    iget v2, p0, Lxf8;->h:I

    .line 12
    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object p0, p0, Lxf8;->i:Lv64$c;

    .line 18
    .line 19
    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0
.end method

.method public p()Lv64$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lxf8;->i:Lv64$c;

    .line 2
    .line 3
    return-object p0
.end method

.method public q()I
    .locals 0

    .line 1
    iget p0, p0, Lxf8;->h:I

    .line 2
    .line 3
    return p0
.end method

.method public r()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lxf8;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
