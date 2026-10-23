.class public final Lqs4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lll6;
.implements Ldc4;


# instance fields
.field public final a:Landroid/content/res/Resources;

.field public final b:Lll6;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lll6;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Argument must not be null"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lms8;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lqs4;->a:Landroid/content/res/Resources;

    .line 10
    .line 11
    invoke-static {p2, v0}, Lms8;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lqs4;->b:Lll6;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object p0, p0, Lqs4;->b:Lll6;

    .line 2
    .line 3
    instance-of v0, p0, Ldc4;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p0, Ldc4;

    .line 8
    .line 9
    invoke-interface {p0}, Ldc4;->a()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    .line 1
    iget-object p0, p0, Lqs4;->b:Lll6;

    .line 2
    .line 3
    invoke-interface {p0}, Lll6;->b()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c()I
    .locals 0

    .line 1
    iget-object p0, p0, Lqs4;->b:Lll6;

    .line 2
    .line 3
    invoke-interface {p0}, Lll6;->c()I

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
    const-class p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 2
    .line 3
    return-object p0
.end method

.method public final get()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 2
    .line 3
    iget-object v1, p0, Lqs4;->b:Lll6;

    .line 4
    .line 5
    invoke-interface {v1}, Lll6;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Landroid/graphics/Bitmap;

    .line 10
    .line 11
    iget-object p0, p0, Lqs4;->a:Landroid/content/res/Resources;

    .line 12
    .line 13
    invoke-direct {v0, p0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method
