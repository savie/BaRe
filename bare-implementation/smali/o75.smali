.class public final Lo75;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final i:[F


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [F

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lo75;->i:[F

    .line 8
    .line 9
    return-void

    .line 10
    nop

    .line 11
    :array_0
    .array-data 4
        0x40000000    # 2.0f
        0x3fc00000    # 1.5f
        0x3f95c28f    # 1.17f
        0x3f800000    # 1.0f
        0x3f547ae1    # 0.83f
        0x3f2b851f    # 0.67f
    .end array-data
.end method

.method public constructor <init>(Ln75;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Ln75;->a:I

    .line 5
    .line 6
    iput v0, p0, Lo75;->a:I

    .line 7
    .line 8
    iget v0, p1, Ln75;->b:I

    .line 9
    .line 10
    iput v0, p0, Lo75;->b:I

    .line 11
    .line 12
    iget v0, p1, Ln75;->c:I

    .line 13
    .line 14
    iput v0, p0, Lo75;->c:I

    .line 15
    .line 16
    iget v0, p1, Ln75;->d:I

    .line 17
    .line 18
    iput v0, p0, Lo75;->d:I

    .line 19
    .line 20
    iget v0, p1, Ln75;->e:I

    .line 21
    .line 22
    iput v0, p0, Lo75;->e:I

    .line 23
    .line 24
    iget v0, p1, Ln75;->f:I

    .line 25
    .line 26
    iput v0, p0, Lo75;->f:I

    .line 27
    .line 28
    iget v0, p1, Ln75;->g:I

    .line 29
    .line 30
    iput v0, p0, Lo75;->g:I

    .line 31
    .line 32
    iget p1, p1, Ln75;->h:I

    .line 33
    .line 34
    iput p1, p0, Lo75;->h:I

    .line 35
    .line 36
    return-void
.end method
