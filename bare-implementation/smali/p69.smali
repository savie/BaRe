.class public final Lp69;
.super Ly59;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final p:Lp69;


# instance fields
.field public final transient k:[Ljava/lang/Object;

.field public final transient n:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lp69;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0, v1, v2}, Lp69;-><init>(I[Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lp69;->p:Lp69;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(I[Ljava/lang/Object;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lga4;-><init>(I)V

    .line 3
    .line 4
    .line 5
    iput-object p2, p0, Lp69;->k:[Ljava/lang/Object;

    .line 6
    .line 7
    iput p1, p0, Lp69;->n:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lp69;->n:I

    .line 2
    .line 3
    invoke-static {p1, v0}, Lxx3;->F(II)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lp69;->k:[Ljava/lang/Object;

    .line 7
    .line 8
    aget-object p0, p0, p1

    .line 9
    .line 10
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public final l()[Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lp69;->k:[Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public final o()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final p()I
    .locals 0

    .line 1
    iget p0, p0, Lp69;->n:I

    .line 2
    .line 3
    return p0
.end method

.method public final size()I
    .locals 0

    .line 1
    iget p0, p0, Lp69;->n:I

    .line 2
    .line 3
    return p0
.end method

.method public final w([Ljava/lang/Object;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lp69;->k:[Ljava/lang/Object;

    .line 3
    .line 4
    iget p0, p0, Lp69;->n:I

    .line 5
    .line 6
    invoke-static {v1, v0, p1, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    .line 8
    .line 9
    return p0
.end method
