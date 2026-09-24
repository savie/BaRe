.class public final Lms9;
.super Lbd9;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lr0a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lr0a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lms9;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lms9;->b:Lr0a;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lms9;->b:Lr0a;

    .line 2
    .line 3
    sget-object v0, Lr0a;->e:Lr0a;

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

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lps9;->a:[I

    .line 2
    .line 3
    iget-object v1, p0, Lms9;->b:Lr0a;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq v0, v1, :cond_3

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    const/4 v1, 0x3

    .line 18
    if-eq v0, v1, :cond_1

    .line 19
    .line 20
    const/4 v1, 0x4

    .line 21
    if-eq v0, v1, :cond_0

    .line 22
    .line 23
    const-string v0, "UNKNOWN"

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-string v0, "CRUNCHY"

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const-string v0, "RAW"

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    const-string v0, "LEGACY"

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_3
    const-string v0, "TINK"

    .line 36
    .line 37
    :goto_0
    const-string v1, ", outputPrefixType="

    .line 38
    .line 39
    const-string v2, ")"

    .line 40
    .line 41
    const-string v3, "(typeUrl="

    .line 42
    .line 43
    iget-object p0, p0, Lms9;->a:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v3, p0, v1, v0, v2}, Leq3;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method
