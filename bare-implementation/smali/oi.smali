.class public final Loi;
.super Lpi;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Integer;

.field public final d:I

.field public final e:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Integer;IZI)V
    .locals 1

    .line 1
    and-int/lit8 v0, p6, 0x4

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x0

    .line 6
    :cond_0
    and-int/lit8 p6, p6, 0x10

    .line 7
    .line 8
    if-eqz p6, :cond_1

    .line 9
    .line 10
    const/4 p5, 0x1

    .line 11
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput p1, p0, Loi;->a:I

    .line 15
    .line 16
    iput-object p2, p0, Loi;->b:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p3, p0, Loi;->c:Ljava/lang/Integer;

    .line 19
    .line 20
    iput p4, p0, Loi;->d:I

    .line 21
    .line 22
    iput-boolean p5, p0, Loi;->e:Z

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 1
    iget p0, p0, Loi;->a:I

    .line 2
    .line 3
    return p0
.end method
