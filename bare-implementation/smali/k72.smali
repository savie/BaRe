.class public abstract Lk72;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lpx7;


# instance fields
.field public final a:I

.field public final b:I

.field public c:Lkk6;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/high16 v0, -0x80000000

    .line 28
    invoke-direct {p0, v0, v0}, Lk72;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1, p2}, Lxh8;->u(II)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iput p1, p0, Lk72;->a:I

    .line 11
    .line 12
    iput p2, p0, Lk72;->b:I

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const-string p0, "Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: "

    .line 16
    .line 17
    const-string v0, " and height: "

    .line 18
    .line 19
    invoke-static {p0, p1, p2, v0}, Ldj7;->i(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    throw p0
.end method


# virtual methods
.method public final a(Lfh7;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final c(Lfh7;)V
    .locals 1

    .line 1
    iget v0, p0, Lk72;->a:I

    .line 2
    .line 3
    iget p0, p0, Lk72;->b:I

    .line 4
    .line 5
    invoke-virtual {p1, v0, p0}, Lfh7;->m(II)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final d(Lkk6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk72;->c:Lkk6;

    .line 2
    .line 3
    return-void
.end method

.method public final e()V
    .locals 0

    .line 1
    return-void
.end method

.method public g(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final h()V
    .locals 0

    .line 1
    return-void
.end method

.method public j(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final k()Lkk6;
    .locals 0

    .line 1
    iget-object p0, p0, Lk72;->c:Lkk6;

    .line 2
    .line 3
    return-object p0
.end method

.method public final m()V
    .locals 0

    .line 1
    return-void
.end method
