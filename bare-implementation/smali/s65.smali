.class public abstract Ls65;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lh81;
.implements Ljava/io/Serializable;


# instance fields
.field public final a:J

.field public final b:Len0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lqk4;->e:Lqk4;

    .line 2
    .line 3
    sget-object v0, Lbk4;->n:Lbk4;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Len0;J)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Ls65;->b:Len0;

    .line 13
    iput-wide p2, p0, Ls65;->a:J

    return-void
.end method

.method public constructor <init>(Lt65;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p1, Ls65;->b:Len0;

    .line 5
    .line 6
    iput-object p1, p0, Ls65;->b:Len0;

    .line 7
    .line 8
    iput-wide p2, p0, Ls65;->a:J

    .line 9
    .line 10
    return-void
.end method

.method public static b(Ljava/lang/Class;)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, [Ljava/lang/Enum;

    .line 6
    .line 7
    array-length v0, p0

    .line 8
    const/4 v1, 0x0

    .line 9
    move v2, v1

    .line 10
    :goto_0
    if-ge v1, v0, :cond_1

    .line 11
    .line 12
    aget-object v3, p0, v1

    .line 13
    .line 14
    check-cast v3, Lrq1;

    .line 15
    .line 16
    invoke-interface {v3}, Lrq1;->a()Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    invoke-interface {v3}, Lrq1;->b()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    or-int/2addr v2, v3

    .line 27
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return v2
.end method


# virtual methods
.method public final c(Ljava/lang/Class;)Lgc8;
    .locals 2

    .line 1
    iget-object p0, p0, Ls65;->b:Len0;

    .line 2
    .line 3
    iget-object p0, p0, Len0;->a:Llc8;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    sget-object v1, Llc8;->d:Ljc8;

    .line 7
    .line 8
    invoke-virtual {p0, v0, p1, v1}, Llc8;->b(Lvq;Ljava/lang/reflect/Type;Ljc8;)Lgc8;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public final d()Las5;
    .locals 1

    .line 1
    sget-object v0, Lu65;->c:Lu65;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ls65;->i(Lu65;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Ls65;->b:Len0;

    .line 10
    .line 11
    iget-object p0, p0, Len0;->c:Lyg4;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    sget-object p0, Lgo5;->a:Lgo5;

    .line 15
    .line 16
    return-object p0
.end method

.method public abstract e(Ljava/lang/Class;)Lcz4;
.end method

.method public abstract f(Ljava/lang/Class;)Lbk4;
.end method

.method public final g()V
    .locals 0

    .line 1
    iget-object p0, p0, Ls65;->b:Len0;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public abstract h(Lad2;)Z
.end method

.method public final i(Lu65;)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Ls65;->a:J

    .line 2
    .line 3
    iget-wide p0, p1, Lu65;->b:J

    .line 4
    .line 5
    and-long/2addr p0, v0

    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long p0, p0, v0

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return p0
.end method
