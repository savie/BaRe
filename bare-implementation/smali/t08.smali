.class public final Lt08;
.super Ljb9;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic M:Landroid/content/Context;

.field public final synthetic N:Landroid/text/TextPaint;

.field public final synthetic O:Ljb9;

.field public final synthetic P:Lu08;


# direct methods
.method public constructor <init>(Lu08;Landroid/content/Context;Landroid/text/TextPaint;Ljb9;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lt08;->P:Lu08;

    .line 5
    .line 6
    iput-object p2, p0, Lt08;->M:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Lt08;->N:Landroid/text/TextPaint;

    .line 9
    .line 10
    iput-object p4, p0, Lt08;->O:Ljb9;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final J(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lt08;->O:Ljb9;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljb9;->J(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final K(Landroid/graphics/Typeface;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lt08;->M:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lt08;->N:Landroid/text/TextPaint;

    .line 4
    .line 5
    iget-object v2, p0, Lt08;->P:Lu08;

    .line 6
    .line 7
    invoke-virtual {v2, v0, v1, p1}, Lu08;->f(Landroid/content/Context;Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lt08;->O:Ljb9;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Ljb9;->K(Landroid/graphics/Typeface;Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
