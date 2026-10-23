.class public final Lur;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljk8;


# instance fields
.field public final a:Lcom/google/android/material/card/MaterialCardView;

.field public final b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/card/MaterialCardView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lur;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 5
    .line 6
    iput-object p2, p0, Lur;->b:Landroid/widget/TextView;

    .line 7
    .line 8
    return-void
.end method

.method public static a(Landroid/view/View;)Lur;
    .locals 3

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Lcom/google/android/material/card/MaterialCardView;

    .line 3
    .line 4
    const v1, 0x7f0a05ba

    .line 5
    .line 6
    .line 7
    invoke-static {p0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Landroid/widget/TextView;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    new-instance p0, Lur;

    .line 16
    .line 17
    invoke-direct {p0, v0, v2}, Lur;-><init>(Lcom/google/android/material/card/MaterialCardView;Landroid/widget/TextView;)V

    .line 18
    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string v0, "Missing required view with ID: "

    .line 30
    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x0

    .line 39
    return-object p0
.end method


# virtual methods
.method public final getRoot()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lur;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 2
    .line 3
    return-object p0
.end method
