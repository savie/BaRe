.class public Luw3;
.super Lvr5;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luw3$a;
    }
.end annotation


# static fields
.field public static final j:I


# instance fields
.field private h:Lv64$d;

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const v0, 0x93a80

    .line 2
    .line 3
    .line 4
    sput v0, Luw3;->j:I

    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lvr5;-><init>()V

    .line 2
    .line 3
    .line 4
    sget v0, Luw3;->j:I

    .line 5
    .line 6
    iput v0, p0, Luw3;->i:I

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic j(Luw3;)Lv64$d;
    .locals 0

    .line 1
    iget-object p0, p0, Luw3;->h:Lv64$d;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic k(Luw3;Lv64$d;)Lv64$d;
    .locals 0

    .line 1
    iput-object p1, p0, Luw3;->h:Lv64$d;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic l(Luw3;I)I
    .locals 0

    .line 1
    iput p1, p0, Luw3;->i:I

    .line 2
    .line 3
    return p1
.end method

.method public static m()Luw3$a;
    .locals 1

    .line 1
    new-instance v0, Luw3$a;

    .line 2
    .line 3
    invoke-direct {v0}, Luw3$a;-><init>()V

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
    instance-of v1, p1, Luw3;

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
    invoke-super {p0, p1}, Lvr5;->equals(Ljava/lang/Object;)Z

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
    check-cast p1, Luw3;

    .line 19
    .line 20
    iget v1, p0, Luw3;->i:I

    .line 21
    .line 22
    iget v3, p1, Luw3;->i:I

    .line 23
    .line 24
    if-ne v1, v3, :cond_3

    .line 25
    .line 26
    iget-object p0, p0, Luw3;->h:Lv64$d;

    .line 27
    .line 28
    iget-object p1, p1, Luw3;->h:Lv64$d;

    .line 29
    .line 30
    if-ne p0, p1, :cond_3

    .line 31
    .line 32
    return v0

    .line 33
    :cond_3
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-super {p0}, Lvr5;->hashCode()I

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
    iget-object v1, p0, Luw3;->h:Lv64$d;

    .line 10
    .line 11
    iget p0, p0, Luw3;->i:I

    .line 12
    .line 13
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0
.end method

.method public n()I
    .locals 0

    .line 1
    iget p0, p0, Luw3;->i:I

    .line 2
    .line 3
    return p0
.end method

.method public o()Lv64$d;
    .locals 0

    .line 1
    iget-object p0, p0, Luw3;->h:Lv64$d;

    .line 2
    .line 3
    return-object p0
.end method
