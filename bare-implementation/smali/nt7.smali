.class public final synthetic Lnt7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic a:Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lcom/google/android/material/card/MaterialCardView;

.field public final synthetic d:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup;Landroid/view/View;Lcom/google/android/material/card/MaterialCardView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnt7;->a:Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup;

    .line 5
    .line 6
    iput-object p2, p0, Lnt7;->b:Landroid/view/View;

    .line 7
    .line 8
    iput-object p3, p0, Lnt7;->c:Lcom/google/android/material/card/MaterialCardView;

    .line 9
    .line 10
    iput-object p4, p0, Lnt7;->d:Landroid/view/View;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Lnt7;->c:Lcom/google/android/material/card/MaterialCardView;

    .line 2
    .line 3
    iget-object p2, p0, Lnt7;->d:Landroid/view/View;

    .line 4
    .line 5
    iget-object p3, p0, Lnt7;->a:Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup;

    .line 6
    .line 7
    iget-object p0, p0, Lnt7;->b:Landroid/view/View;

    .line 8
    .line 9
    invoke-static {p3, p0, p1, p2}, Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup;->c(Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup;Landroid/view/View;Lcom/google/android/material/card/MaterialCardView;Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
