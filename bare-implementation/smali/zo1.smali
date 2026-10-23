.class public final Lzo1;
.super Lh23;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:[Lh23;

.field public b:Lh23;


# direct methods
.method public constructor <init>([Lh23;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lzo1;->b:Lh23;

    .line 6
    .line 7
    iput-object p1, p0, Lzo1;->a:[Lh23;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Lg23;
    .locals 3

    .line 1
    iget-object v0, p0, Lzo1;->b:Lh23;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lh23;->b(Ljava/lang/String;)Lg23;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    const/4 v1, 0x2

    .line 12
    if-ge v0, v1, :cond_2

    .line 13
    .line 14
    iget-object v1, p0, Lzo1;->a:[Lh23;

    .line 15
    .line 16
    aget-object v1, v1, v0

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Lh23;->b(Ljava/lang/String;)Lg23;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    iput-object v1, p0, Lzo1;->b:Lh23;

    .line 25
    .line 26
    return-object v2

    .line 27
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    const/4 p0, 0x0

    .line 31
    return-object p0
.end method
