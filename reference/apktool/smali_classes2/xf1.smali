.class public final Lxf1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljk8;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public k:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 20
    const/4 v0, 0x2

    iput v0, p0, Lxf1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Lcom/warkiz/widget/IndicatorSeekBar;Lcom/warkiz/widget/IndicatorStayLayout;Lcom/google/android/material/radiobutton/MaterialRadioButton;Landroid/widget/TextView;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lxf1;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lxf1;->c:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lxf1;->d:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p3, p0, Lxf1;->e:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p4, p0, Lxf1;->f:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object p5, p0, Lxf1;->k:Ljava/lang/Object;

    .line 16
    .line 17
    iput-object p6, p0, Lxf1;->b:Ljava/lang/Object;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup;Lcom/google/android/material/button/MaterialButton;Landroid/widget/ImageView;Lca2;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lxf1;->a:I

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lxf1;->c:Ljava/lang/Object;

    .line 23
    iput-object p2, p0, Lxf1;->d:Ljava/lang/Object;

    .line 24
    iput-object p3, p0, Lxf1;->e:Ljava/lang/Object;

    .line 25
    iput-object p4, p0, Lxf1;->f:Ljava/lang/Object;

    .line 26
    iput-object p5, p0, Lxf1;->b:Ljava/lang/Object;

    .line 27
    iput-object p6, p0, Lxf1;->k:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getRoot()Landroid/view/View;
    .locals 1

    .line 1
    iget v0, p0, Lxf1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lxf1;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 9
    .line 10
    return-object p0

    .line 11
    :pswitch_0
    iget-object p0, p0, Lxf1;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup;

    .line 14
    .line 15
    return-object p0

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
