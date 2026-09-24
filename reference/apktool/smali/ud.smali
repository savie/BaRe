.class public abstract Lud;
.super Lod;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final O:[Ls79;


# direct methods
.method public constructor <init>(Lqc8;Ls79;[Ls79;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lod;-><init>(Lqc8;Ls79;)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lud;->O:[Ls79;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final w0(I)Ltd;
    .locals 6

    .line 1
    new-instance v0, Ltd;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lud;->y0(I)Lgc8;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    iget-object v1, p0, Lud;->O:[Ls79;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    if-ltz p1, :cond_0

    .line 12
    .line 13
    array-length v3, v1

    .line 14
    if-ge p1, v3, :cond_0

    .line 15
    .line 16
    aget-object v1, v1, p1

    .line 17
    .line 18
    :goto_0
    move-object v4, v1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    goto :goto_0

    .line 22
    :goto_1
    iget-object v3, p0, Lod;->M:Lqc8;

    .line 23
    .line 24
    move-object v1, p0

    .line 25
    move v5, p1

    .line 26
    invoke-direct/range {v0 .. v5}, Ltd;-><init>(Lud;Lgc8;Lqc8;Ls79;I)V

    .line 27
    .line 28
    .line 29
    return-object v0
.end method

.method public abstract x0()I
.end method

.method public abstract y0(I)Lgc8;
.end method

.method public abstract z0(I)Ljava/lang/Class;
.end method
