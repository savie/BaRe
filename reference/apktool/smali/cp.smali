.class public final Lcp;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:Lfp;


# direct methods
.method public constructor <init>(Lfp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcp;->a:Lfp;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcp;->a:Lfp;

    .line 2
    .line 3
    iget-object p1, p0, Lfp;->Y:Lip;

    .line 4
    .line 5
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    .line 9
    .line 10
    .line 11
    move-result-object p4

    .line 12
    if-eqz p4, :cond_0

    .line 13
    .line 14
    iget-object p4, p0, Lfp;->V:Lbp;

    .line 15
    .line 16
    invoke-virtual {p4, p3}, Lbp;->getItemId(I)J

    .line 17
    .line 18
    .line 19
    move-result-wide p4

    .line 20
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0}, Lky4;->dismiss()V

    .line 24
    .line 25
    .line 26
    return-void
.end method
