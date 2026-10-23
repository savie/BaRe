.class public final Lkf4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljk8;


# instance fields
.field public final a:Landroidx/appcompat/widget/LinearLayoutCompat;

.field public final b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/LinearLayoutCompat;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkf4;->a:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 5
    .line 6
    iput-object p2, p0, Lkf4;->b:Landroid/widget/TextView;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getRoot()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lkf4;->a:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 2
    .line 3
    return-object p0
.end method
