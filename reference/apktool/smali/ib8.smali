.class public final Lib8;
.super Lkv1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:Lt26;

.field public b:Ljava/lang/String;

.field public c:[Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:I

.field public synthetic k:Ljava/lang/Object;

.field public final synthetic n:Lmb8;

.field public p:I


# direct methods
.method public constructor <init>(Lmb8;Lkv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lib8;->n:Lmb8;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lkv1;-><init>(Ljv1;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iput-object p1, p0, Lib8;->k:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lib8;->p:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lib8;->p:I

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    const/4 v0, 0x0

    .line 12
    iget-object v1, p0, Lib8;->n:Lmb8;

    .line 13
    .line 14
    invoke-static {v1, p1, v0, p0}, Lmb8;->c(Lmb8;Lg98;ILkv1;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method
