.class public abstract Lyb6;
.super Lyq5;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyb6$a;
    }
.end annotation


# instance fields
.field protected g:Ljava/io/RandomAccessFile;

.field protected h:Lox0;

.field protected i:[B

.field protected j:Ljava/lang/Long;

.field protected k:Lv64$c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lyq5;-><init>()V

    return-void
.end method

.method public constructor <init>(Lbg8;Ljava/io/RandomAccessFile;JLv64$c;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lyq5;-><init>(Lyq5;)V

    .line 38
    iput-object p2, p0, Lyb6;->g:Ljava/io/RandomAccessFile;

    .line 39
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lyb6;->j:Ljava/lang/Long;

    .line 40
    iput-object p5, p0, Lyb6;->k:Lv64$c;

    return-void
.end method

.method public constructor <init>(Lbg8;[BILv64$c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lyq5;-><init>(Lyq5;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lyb6;->i:[B

    .line 5
    .line 6
    int-to-long p1, p3

    .line 7
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lyb6;->j:Ljava/lang/Long;

    .line 12
    .line 13
    iput-object p4, p0, Lyb6;->k:Lv64$c;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Ld10;Ljava/io/RandomAccessFile;JLv64$c;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p5}, Lyb6;-><init>(Ld10;Lv64$c;)V

    .line 31
    iput-object p2, p0, Lyb6;->g:Ljava/io/RandomAccessFile;

    .line 32
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lyb6;->j:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Ld10;Lox0;Lv64$c;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p3}, Lyb6;-><init>(Ld10;Lv64$c;)V

    .line 29
    iput-object p2, p0, Lyb6;->h:Lox0;

    return-void
.end method

.method private constructor <init>(Ld10;Lv64$c;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lyq5;-><init>(Lyq5;)V

    .line 27
    iput-object p2, p0, Lyb6;->k:Lv64$c;

    return-void
.end method

.method public constructor <init>(Ld10;[BILv64$c;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p4}, Lyb6;-><init>(Ld10;Lv64$c;)V

    .line 34
    iput-object p2, p0, Lyb6;->i:[B

    int-to-long p1, p3

    .line 35
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lyb6;->j:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Ldc6;Ljava/io/RandomAccessFile;JLv64$c;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p5}, Lyb6;-><init>(Ldc6;Lv64$c;)V

    .line 21
    iput-object p2, p0, Lyb6;->g:Ljava/io/RandomAccessFile;

    .line 22
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lyb6;->j:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Ldc6;Lox0;Lv64$c;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p3}, Lyb6;-><init>(Ldc6;Lv64$c;)V

    .line 19
    iput-object p2, p0, Lyb6;->h:Lox0;

    return-void
.end method

.method private constructor <init>(Ldc6;Lv64$c;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lyq5;-><init>(Lyq5;)V

    .line 17
    iput-object p2, p0, Lyb6;->k:Lv64$c;

    return-void
.end method

.method public constructor <init>(Ldc6;[BILv64$c;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p4}, Lyb6;-><init>(Ldc6;Lv64$c;)V

    .line 24
    iput-object p2, p0, Lyb6;->i:[B

    int-to-long p1, p3

    .line 25
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lyb6;->j:Ljava/lang/Long;

    return-void
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
    instance-of v1, p1, Lyb6;

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
    check-cast p1, Lyb6;

    .line 19
    .line 20
    iget-object v1, p0, Lyb6;->g:Ljava/io/RandomAccessFile;

    .line 21
    .line 22
    iget-object v3, p1, Lyb6;->g:Ljava/io/RandomAccessFile;

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
    iget-object v1, p0, Lyb6;->h:Lox0;

    .line 31
    .line 32
    iget-object v3, p1, Lyb6;->h:Lox0;

    .line 33
    .line 34
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_3

    .line 39
    .line 40
    iget-object v1, p0, Lyb6;->i:[B

    .line 41
    .line 42
    iget-object v3, p1, Lyb6;->i:[B

    .line 43
    .line 44
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_3

    .line 49
    .line 50
    iget-object v1, p0, Lyb6;->j:Ljava/lang/Long;

    .line 51
    .line 52
    iget-object v3, p1, Lyb6;->j:Ljava/lang/Long;

    .line 53
    .line 54
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    iget-object p0, p0, Lyb6;->k:Lv64$c;

    .line 61
    .line 62
    iget-object p1, p1, Lyb6;->k:Lv64$c;

    .line 63
    .line 64
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    if-eqz p0, :cond_3

    .line 69
    .line 70
    return v0

    .line 71
    :cond_3
    return v2
.end method

.method public hashCode()I
    .locals 7

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
    move-result-object v1

    .line 9
    iget-object v2, p0, Lyb6;->g:Ljava/io/RandomAccessFile;

    .line 10
    .line 11
    iget-object v3, p0, Lyb6;->h:Lox0;

    .line 12
    .line 13
    iget-object v4, p0, Lyb6;->i:[B

    .line 14
    .line 15
    iget-object v5, p0, Lyb6;->j:Ljava/lang/Long;

    .line 16
    .line 17
    iget-object v6, p0, Lyb6;->k:Lv64$c;

    .line 18
    .line 19
    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

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

.method public i()Lox0;
    .locals 0

    .line 1
    iget-object p0, p0, Lyb6;->h:Lox0;

    .line 2
    .line 3
    return-object p0
.end method

.method public j()[B
    .locals 0

    .line 1
    iget-object p0, p0, Lyb6;->i:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public k()Ljava/io/RandomAccessFile;
    .locals 0

    .line 1
    iget-object p0, p0, Lyb6;->g:Ljava/io/RandomAccessFile;

    .line 2
    .line 3
    return-object p0
.end method

.method public l()Lv64$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lyb6;->k:Lv64$c;

    .line 2
    .line 3
    return-object p0
.end method

.method public m()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lyb6;->j:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method
