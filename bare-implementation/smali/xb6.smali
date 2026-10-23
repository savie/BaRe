.class public Lxb6;
.super Lyb6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxb6$a;
    }
.end annotation


# instance fields
.field private l:Lokhttp3/MediaType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lyb6;-><init>()V

    return-void
.end method

.method public constructor <init>(Lbg8;Ljava/io/RandomAccessFile;JLv64$c;)V
    .locals 0

    .line 24
    invoke-direct/range {p0 .. p5}, Lyb6;-><init>(Lbg8;Ljava/io/RandomAccessFile;JLv64$c;)V

    return-void
.end method

.method public constructor <init>(Lbg8;[BILv64$c;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Lyb6;-><init>(Lbg8;[BILv64$c;)V

    return-void
.end method

.method public constructor <init>(Ld10;Ljava/io/RandomAccessFile;JLv64$c;)V
    .locals 0

    .line 21
    invoke-direct/range {p0 .. p5}, Lyb6;-><init>(Ld10;Ljava/io/RandomAccessFile;JLv64$c;)V

    return-void
.end method

.method public constructor <init>(Ld10;Lox0;Lv64$c;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lyb6;-><init>(Ld10;Lox0;Lv64$c;)V

    return-void
.end method

.method public constructor <init>(Ld10;[BILv64$c;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lyb6;-><init>(Ld10;[BILv64$c;)V

    return-void
.end method

.method public constructor <init>(Ldc6;Ljava/io/RandomAccessFile;JLokhttp3/MediaType;Lv64$c;)V
    .locals 6

    .line 1
    invoke-virtual {p1, p5, p6}, Lyr5;->o(Lokhttp3/MediaType;Lv64$c;)Lv64$c;

    .line 2
    .line 3
    .line 4
    move-result-object v5

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move-object v2, p2

    .line 8
    move-wide v3, p3

    .line 9
    invoke-direct/range {v0 .. v5}, Lyb6;-><init>(Ldc6;Ljava/io/RandomAccessFile;JLv64$c;)V

    .line 10
    .line 11
    .line 12
    iput-object p5, v0, Lxb6;->l:Lokhttp3/MediaType;

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Ldc6;Lox0;Lokhttp3/MediaType;Lv64$c;)V
    .locals 0

    .line 15
    invoke-virtual {p1, p3, p4}, Lyr5;->o(Lokhttp3/MediaType;Lv64$c;)Lv64$c;

    move-result-object p4

    invoke-direct {p0, p1, p2, p4}, Lyb6;-><init>(Ldc6;Lox0;Lv64$c;)V

    .line 16
    iput-object p3, p0, Lxb6;->l:Lokhttp3/MediaType;

    return-void
.end method

.method public constructor <init>(Ldc6;[BILokhttp3/MediaType;Lv64$c;)V
    .locals 0

    .line 18
    invoke-virtual {p1, p4, p5}, Lyr5;->o(Lokhttp3/MediaType;Lv64$c;)Lv64$c;

    move-result-object p5

    invoke-direct {p0, p1, p2, p3, p5}, Lyb6;-><init>(Ldc6;[BILv64$c;)V

    .line 19
    iput-object p4, p0, Lxb6;->l:Lokhttp3/MediaType;

    return-void
.end method

.method public static synthetic n(Lxb6;Lokhttp3/MediaType;)Lokhttp3/MediaType;
    .locals 0

    .line 1
    iput-object p1, p0, Lxb6;->l:Lokhttp3/MediaType;

    .line 2
    .line 3
    return-object p1
.end method

.method public static o()Lxb6$a;
    .locals 1

    .line 1
    new-instance v0, Lxb6$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lxb6$a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    instance-of v0, p1, Lxb6;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    return v1

    .line 11
    :cond_1
    invoke-super {p0, p1}, Lyb6;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Lxb6;

    .line 19
    .line 20
    iget-object p0, p0, Lxb6;->l:Lokhttp3/MediaType;

    .line 21
    .line 22
    iget-object p1, p1, Lxb6;->l:Lokhttp3/MediaType;

    .line 23
    .line 24
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    return p0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-super {p0}, Lyb6;->hashCode()I

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
    iget-object p0, p0, Lxb6;->l:Lokhttp3/MediaType;

    .line 10
    .line 11
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public p()Lokhttp3/MediaType;
    .locals 0

    .line 1
    iget-object p0, p0, Lxb6;->l:Lokhttp3/MediaType;

    .line 2
    .line 3
    return-object p0
.end method
