.class public final Lya4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljk8;


# instance fields
.field public final synthetic a:I

.field public final b:Lcom/google/android/material/card/MaterialCardView;

.field public final c:Lcom/google/android/material/card/MaterialCardView;

.field public final d:Landroid/widget/TextView;

.field public final e:Landroid/widget/TextView;

.field public final f:Landroid/widget/TextView;

.field public final k:Landroid/view/View;

.field public final n:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/card/MaterialCardView;Landroid/widget/ImageView;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/card/MaterialCardView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lya4;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lya4;->b:Lcom/google/android/material/card/MaterialCardView;

    .line 8
    .line 9
    iput-object p2, p0, Lya4;->k:Landroid/view/View;

    .line 10
    .line 11
    iput-object p3, p0, Lya4;->n:Landroid/widget/TextView;

    .line 12
    .line 13
    iput-object p4, p0, Lya4;->c:Lcom/google/android/material/card/MaterialCardView;

    .line 14
    .line 15
    iput-object p5, p0, Lya4;->d:Landroid/widget/TextView;

    .line 16
    .line 17
    iput-object p6, p0, Lya4;->e:Landroid/widget/TextView;

    .line 18
    .line 19
    iput-object p7, p0, Lya4;->f:Landroid/widget/TextView;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/card/MaterialCardView;Lcom/google/android/material/card/MaterialCardView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lya4;->a:I

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lya4;->b:Lcom/google/android/material/card/MaterialCardView;

    .line 24
    iput-object p2, p0, Lya4;->c:Lcom/google/android/material/card/MaterialCardView;

    .line 25
    iput-object p3, p0, Lya4;->d:Landroid/widget/TextView;

    .line 26
    iput-object p4, p0, Lya4;->e:Landroid/widget/TextView;

    .line 27
    iput-object p5, p0, Lya4;->f:Landroid/widget/TextView;

    .line 28
    iput-object p6, p0, Lya4;->k:Landroid/view/View;

    .line 29
    iput-object p7, p0, Lya4;->n:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final getRoot()Landroid/view/View;
    .locals 1

    .line 1
    iget v0, p0, Lya4;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lya4;->b:Lcom/google/android/material/card/MaterialCardView;

    .line 4
    .line 5
    return-object p0
.end method
