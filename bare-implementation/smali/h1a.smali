.class public final Lh1a;
.super Lv39;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic f:Lgl9;


# direct methods
.method public constructor <init>(Lfu;Ljava/lang/CharSequence;Lgl9;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lh1a;->f:Lgl9;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lv39;-><init>(Lfu;Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 0

    .line 1
    add-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    return p1
.end method

.method public final b(I)I
    .locals 5

    .line 1
    iget-object v0, p0, Lv39;->c:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-ltz p1, :cond_3

    .line 9
    .line 10
    if-gt p1, v1, :cond_3

    .line 11
    .line 12
    :goto_0
    if-ge p1, v1, :cond_2

    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    iget-object v4, p0, Lh1a;->f:Lgl9;

    .line 19
    .line 20
    iget-char v4, v4, Lgl9;->a:C

    .line 21
    .line 22
    if-ne v3, v4, :cond_0

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    move v3, v2

    .line 27
    :goto_1
    if-eqz v3, :cond_1

    .line 28
    .line 29
    return p1

    .line 30
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    const/4 p0, -0x1

    .line 34
    return p0

    .line 35
    :cond_3
    const-string p0, "index"

    .line 36
    .line 37
    invoke-static {p1, v1, p0}, Lpe4;->N(IILjava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-static {p0}, La6;->d(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return v2
.end method
