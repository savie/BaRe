.class public final Lcy4$a;
.super Lfw0$a;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcy4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfw0$a<",
        "Lcy4$a;",
        "Lcy4;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfw0$a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic A(Ljava/lang/Integer;Lcy4;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lcy4;->j(Lcy4;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic B(Ljava/lang/Integer;Lcy4;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lcy4;->i(Lcy4;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic C(Ljava/lang/String;Lcy4;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lcy4;->k(Lcy4;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic x(Ljava/lang/String;Lcy4;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcy4$a;->C(Ljava/lang/String;Lcy4;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic y(Ljava/lang/Integer;Lcy4;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcy4$a;->A(Ljava/lang/Integer;Lcy4;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic z(Ljava/lang/Integer;Lcy4;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcy4$a;->B(Ljava/lang/Integer;Lcy4;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public D(Ljava/lang/Integer;)Lcy4$a;
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string p0, "valid max parts must be provided"

    .line 12
    .line 13
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    return-object p0

    .line 18
    :cond_1
    :goto_0
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 19
    .line 20
    new-instance v1, Lfn1;

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    invoke-direct {v1, p1, v2}, Lfn1;-><init>(Ljava/lang/Object;I)V

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    return-object p0
.end method

.method public E(Ljava/lang/Integer;)Lcy4$a;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-lt v1, v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/16 v2, 0x2710

    .line 15
    .line 16
    if-gt v1, v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string p0, "valid part number marker must be provided"

    .line 20
    .line 21
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    return-object p0

    .line 26
    :cond_1
    :goto_0
    iget-object v1, p0, Lll0$a;->a:Ljava/util/List;

    .line 27
    .line 28
    new-instance v2, Len1;

    .line 29
    .line 30
    invoke-direct {v2, p1, v0}, Len1;-><init>(Ljava/lang/Object;I)V

    .line 31
    .line 32
    .line 33
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    return-object p0
.end method

.method public F(Ljava/lang/String;)Lcy4$a;
    .locals 3

    .line 1
    const-string v0, "upload ID"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lki8;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 7
    .line 8
    new-instance v1, Lgn1;

    .line 9
    .line 10
    const/4 v2, 0x3

    .line 11
    invoke-direct {v1, p1, v2}, Lgn1;-><init>(Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-object p0
.end method
