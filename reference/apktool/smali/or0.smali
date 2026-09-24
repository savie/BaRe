.class public final Lor0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lll6;
.implements Ldc4;


# instance fields
.field public final a:Landroid/graphics/Bitmap;

.field public final b:Lnr0;


# direct methods
.method public constructor <init>(Lnr0;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Bitmap must not be null"

    .line 5
    .line 6
    invoke-static {p2, v0}, Lms8;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lor0;->a:Landroid/graphics/Bitmap;

    .line 10
    .line 11
    const-string p2, "BitmapPool must not be null"

    .line 12
    .line 13
    invoke-static {p1, p2}, Lms8;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lor0;->b:Lnr0;

    .line 17
    .line 18
    return-void
.end method

.method public static e(Lnr0;Landroid/graphics/Bitmap;)Lor0;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lor0;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1}, Lor0;-><init>(Lnr0;Landroid/graphics/Bitmap;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    iget-object p0, p0, Lor0;->a:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lor0;->b:Lnr0;

    .line 2
    .line 3
    iget-object p0, p0, Lor0;->a:Landroid/graphics/Bitmap;

    .line 4
    .line 5
    invoke-interface {v0, p0}, Lnr0;->f(Landroid/graphics/Bitmap;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final c()I
    .locals 0

    .line 1
    iget-object p0, p0, Lor0;->a:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    invoke-static {p0}, Lxh8;->l(Landroid/graphics/Bitmap;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final d()Ljava/lang/Class;
    .locals 0

    .line 1
    const-class p0, Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-object p0
.end method

.method public final get()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lor0;->a:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-object p0
.end method
