.class public final Lcq9;
.super Lcr9;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final g:Ljava/util/Set;


# instance fields
.field public final a:Lyp9;

.field public final b:Lxp9;

.field public final c:Laq9;

.field public final d:Lzp9;

.field public final e:Lbd9;

.field public final f:Ld2a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lfa9;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {v0}, Lfa9;->a()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    check-cast v0, Ljava/util/Set;

    .line 11
    .line 12
    sput-object v0, Lcq9;->g:Ljava/util/Set;

    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception v0

    .line 16
    new-instance v1, Lyt9;

    .line 17
    .line 18
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    throw v1
.end method

.method public constructor <init>(Lyp9;Lxp9;Laq9;Lbd9;Lzp9;Ld2a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcq9;->a:Lyp9;

    .line 5
    .line 6
    iput-object p2, p0, Lcq9;->b:Lxp9;

    .line 7
    .line 8
    iput-object p3, p0, Lcq9;->c:Laq9;

    .line 9
    .line 10
    iput-object p4, p0, Lcq9;->e:Lbd9;

    .line 11
    .line 12
    iput-object p5, p0, Lcq9;->d:Lzp9;

    .line 13
    .line 14
    iput-object p6, p0, Lcq9;->f:Ld2a;

    .line 15
    .line 16
    return-void
.end method

.method public static b()Lwp9;
    .locals 3

    .line 1
    new-instance v0, Lwp9;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-object v1, v0, Lwp9;->a:Lyp9;

    .line 8
    .line 9
    iput-object v1, v0, Lwp9;->b:Lxp9;

    .line 10
    .line 11
    iput-object v1, v0, Lwp9;->c:Laq9;

    .line 12
    .line 13
    iput-object v1, v0, Lwp9;->d:Lbd9;

    .line 14
    .line 15
    sget-object v2, Lzp9;->d:Lzp9;

    .line 16
    .line 17
    iput-object v2, v0, Lwp9;->e:Lzp9;

    .line 18
    .line 19
    iput-object v1, v0, Lwp9;->f:Ld2a;

    .line 20
    .line 21
    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcq9;->d:Lzp9;

    .line 2
    .line 3
    sget-object v0, Lzp9;->d:Lzp9;

    .line 4
    .line 5
    if-eq p0, v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcq9;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lcq9;

    .line 8
    .line 9
    iget-object v0, p1, Lcq9;->a:Lyp9;

    .line 10
    .line 11
    iget-object v2, p0, Lcq9;->a:Lyp9;

    .line 12
    .line 13
    if-eq v0, v2, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    iget-object v0, p1, Lcq9;->b:Lxp9;

    .line 17
    .line 18
    iget-object v2, p0, Lcq9;->b:Lxp9;

    .line 19
    .line 20
    if-eq v0, v2, :cond_2

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    iget-object v0, p1, Lcq9;->c:Laq9;

    .line 24
    .line 25
    iget-object v2, p0, Lcq9;->c:Laq9;

    .line 26
    .line 27
    if-eq v0, v2, :cond_3

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_3
    iget-object v0, p1, Lcq9;->e:Lbd9;

    .line 31
    .line 32
    iget-object v2, p0, Lcq9;->e:Lbd9;

    .line 33
    .line 34
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_5

    .line 39
    .line 40
    iget-object v0, p1, Lcq9;->d:Lzp9;

    .line 41
    .line 42
    iget-object v2, p0, Lcq9;->d:Lzp9;

    .line 43
    .line 44
    if-eq v0, v2, :cond_4

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_4
    iget-object p1, p1, Lcq9;->f:Ld2a;

    .line 48
    .line 49
    iget-object p0, p0, Lcq9;->f:Ld2a;

    .line 50
    .line 51
    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-eqz p0, :cond_5

    .line 56
    .line 57
    const/4 p0, 0x1

    .line 58
    return p0

    .line 59
    :cond_5
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 7

    .line 1
    iget-object v5, p0, Lcq9;->d:Lzp9;

    .line 2
    .line 3
    iget-object v6, p0, Lcq9;->f:Ld2a;

    .line 4
    .line 5
    const-class v0, Lcq9;

    .line 6
    .line 7
    iget-object v1, p0, Lcq9;->a:Lyp9;

    .line 8
    .line 9
    iget-object v2, p0, Lcq9;->b:Lxp9;

    .line 10
    .line 11
    iget-object v3, p0, Lcq9;->c:Laq9;

    .line 12
    .line 13
    iget-object v4, p0, Lcq9;->e:Lbd9;

    .line 14
    .line 15
    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v4, p0, Lcq9;->d:Lzp9;

    .line 2
    .line 3
    iget-object v5, p0, Lcq9;->f:Ld2a;

    .line 4
    .line 5
    iget-object v0, p0, Lcq9;->a:Lyp9;

    .line 6
    .line 7
    iget-object v1, p0, Lcq9;->b:Lxp9;

    .line 8
    .line 9
    iget-object v2, p0, Lcq9;->c:Laq9;

    .line 10
    .line 11
    iget-object v3, p0, Lcq9;->e:Lbd9;

    .line 12
    .line 13
    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string v0, "EciesParameters(curveType=%s, hashType=%s, pointFormat=%s, demParameters=%s, variant=%s, salt=%s)"

    .line 18
    .line 19
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method
