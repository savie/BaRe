.class public final Lv31;
.super Ly31;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final u:Landroid/widget/TextView;

.field public final v:Landroid/widget/TextView;

.field public final synthetic w:Lz31;


# direct methods
.method public constructor <init>(Lz31;Le41;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lv31;->w:Lz31;

    .line 2
    .line 3
    iget-object p1, p2, Le41;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p1, Landroid/widget/LinearLayout;

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lfh6;-><init>(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p2, Le41;->d:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p1, Landroid/widget/TextView;

    .line 13
    .line 14
    iput-object p1, p0, Lv31;->u:Landroid/widget/TextView;

    .line 15
    .line 16
    iget-object p1, p2, Le41;->c:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p1, Landroid/widget/TextView;

    .line 19
    .line 20
    iput-object p1, p0, Lv31;->v:Landroid/widget/TextView;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final r(Ld41;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lv31;->v:Landroid/widget/TextView;

    .line 5
    .line 6
    iget-boolean v1, p1, Ld41;->d:Z

    .line 7
    .line 8
    invoke-static {v0, v1}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lv31;->w:Lz31;

    .line 12
    .line 13
    iget-object v0, v0, Lz31;->i:Lbp0;

    .line 14
    .line 15
    iget-object p0, p0, Lv31;->u:Landroid/widget/TextView;

    .line 16
    .line 17
    iget-object p1, p1, Ld41;->a:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, p0, p1}, Lbp0;->c(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
