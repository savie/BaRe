.class public final Lns9;
.super Lvm4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final d:Lpt9;


# direct methods
.method public constructor <init>(Lpt9;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lps9;->b:[I

    .line 5
    .line 6
    iget v1, p1, Lpt9;->d:I

    .line 7
    .line 8
    invoke-static {v1}, Ldj7;->A(I)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    aget v0, v0, v1

    .line 13
    .line 14
    iput-object p1, p0, Lns9;->d:Lpt9;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final G()Lbd9;
    .locals 2

    .line 1
    new-instance v0, Lms9;

    .line 2
    .line 3
    iget-object p0, p0, Lns9;->d:Lpt9;

    .line 4
    .line 5
    iget-object v1, p0, Lpt9;->a:Ljava/lang/String;

    .line 6
    .line 7
    iget-object p0, p0, Lpt9;->e:Lr0a;

    .line 8
    .line 9
    invoke-direct {v0, v1, p0}, Lms9;-><init>(Ljava/lang/String;Lr0a;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final H()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lns9;->d:Lpt9;

    .line 2
    .line 3
    iget-object p0, p0, Lpt9;->f:Ljava/lang/Integer;

    .line 4
    .line 5
    return-object p0
.end method

.method public final J()Ld2a;
    .locals 3

    .line 1
    iget-object p0, p0, Lns9;->d:Lpt9;

    .line 2
    .line 3
    iget-object v0, p0, Lpt9;->e:Lr0a;

    .line 4
    .line 5
    iget-object v1, p0, Lpt9;->f:Ljava/lang/Integer;

    .line 6
    .line 7
    iget-object p0, p0, Lpt9;->e:Lr0a;

    .line 8
    .line 9
    sget-object v2, Lr0a;->e:Lr0a;

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    new-array p0, p0, [B

    .line 19
    .line 20
    invoke-static {p0}, Ld2a;->a([B)Ld2a;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_0
    sget-object v0, Lr0a;->c:Lr0a;

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    invoke-static {p0}, Lzs9;->b(I)Ld2a;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0

    .line 42
    :cond_1
    sget-object v0, Lr0a;->d:Lr0a;

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_3

    .line 49
    .line 50
    sget-object v0, Lr0a;->f:Lr0a;

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    if-eqz p0, :cond_2

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    const-string p0, "Unknown output prefix type"

    .line 60
    .line 61
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const/4 p0, 0x0

    .line 65
    return-object p0

    .line 66
    :cond_3
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    invoke-static {p0}, Lzs9;->a(I)Ld2a;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    return-object p0
.end method
