.class public final Lo60;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field public final a:Landroid/graphics/drawable/Drawable$Callback;

.field public final synthetic b:Lp60;


# direct methods
.method public constructor <init>(Lp60;Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lo60;->b:Lp60;

    .line 5
    .line 6
    iput-object p2, p0, Lo60;->a:Landroid/graphics/drawable/Drawable$Callback;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lo60;->a:Landroid/graphics/drawable/Drawable$Callback;

    .line 2
    .line 3
    iget-object p0, p0, Lo60;->b:Lp60;

    .line 4
    .line 5
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    .line 1
    iget-object p1, p0, Lo60;->a:Landroid/graphics/drawable/Drawable$Callback;

    .line 2
    .line 3
    iget-object p0, p0, Lo60;->b:Lp60;

    .line 4
    .line 5
    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lo60;->a:Landroid/graphics/drawable/Drawable$Callback;

    .line 2
    .line 3
    iget-object p0, p0, Lo60;->b:Lp60;

    .line 4
    .line 5
    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
