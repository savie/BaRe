.class public final Lpv4;
.super Landroid/text/style/URLSpan;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lo75;

.field public final b:Ljava/lang/String;

.field public final c:Lhx0;


# direct methods
.method public constructor <init>(Lo75;Ljava/lang/String;Lhx0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lpv4;->a:Lo75;

    .line 5
    .line 6
    iput-object p2, p0, Lpv4;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lpv4;->c:Lhx0;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lpv4;->c:Lhx0;

    .line 2
    .line 3
    iget-object p0, p0, Lpv4;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p0}, Lhx0;->k(Landroid/view/View;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lpv4;->a:Lo75;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 8
    .line 9
    .line 10
    iget p0, p0, Lo75;->a:I

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget p0, p1, Landroid/text/TextPaint;->linkColor:I

    .line 19
    .line 20
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
