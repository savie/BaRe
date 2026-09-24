.class public Lbg8;
.super Lyr5;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbg8$a;
    }
.end annotation


# static fields
.field private static final t:Ljava/util/Random;


# instance fields
.field private q:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/lang/String;

.field private s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/Random;

    .line 2
    .line 3
    new-instance v1, Ljava/security/SecureRandom;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lbg8;->t:Ljava/util/Random;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lyr5;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic u()Ljava/util/Random;
    .locals 1

    .line 1
    sget-object v0, Lbg8;->t:Ljava/util/Random;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic v(Lbg8;)Ljava/lang/Iterable;
    .locals 0

    .line 1
    iget-object p0, p0, Lbg8;->q:Ljava/lang/Iterable;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic w(Lbg8;Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 0

    .line 1
    iput-object p1, p0, Lbg8;->q:Ljava/lang/Iterable;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic x(Lbg8;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lbg8;->s:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic y(Lbg8;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lbg8;->r:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static z()Lbg8$a;
    .locals 1

    .line 1
    new-instance v0, Lbg8$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lbg8$a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public A()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lbg8;->s:Z

    .line 2
    .line 3
    return p0
.end method

.method public B()Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lbg8;->q:Ljava/lang/Iterable;

    .line 2
    .line 3
    return-object p0
.end method

.method public C()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lbg8;->r:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

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
    instance-of v1, p1, Lbg8;

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
    invoke-super {p0, p1}, Lyr5;->equals(Ljava/lang/Object;)Z

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
    check-cast p1, Lbg8;

    .line 19
    .line 20
    iget-object v1, p0, Lbg8;->q:Ljava/lang/Iterable;

    .line 21
    .line 22
    iget-object v3, p1, Lbg8;->q:Ljava/lang/Iterable;

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
    iget-object v1, p0, Lbg8;->r:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v3, p1, Lbg8;->r:Ljava/lang/String;

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
    iget-boolean p0, p0, Lbg8;->s:Z

    .line 41
    .line 42
    iget-boolean p1, p1, Lbg8;->s:Z

    .line 43
    .line 44
    if-ne p0, p1, :cond_3

    .line 45
    .line 46
    return v0

    .line 47
    :cond_3
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 1
    invoke-super {p0}, Lyr5;->hashCode()I

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
    iget-object v1, p0, Lbg8;->q:Ljava/lang/Iterable;

    .line 10
    .line 11
    iget-object v2, p0, Lbg8;->r:Ljava/lang/String;

    .line 12
    .line 13
    iget-boolean p0, p0, Lbg8;->s:Z

    .line 14
    .line 15
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object p0

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
