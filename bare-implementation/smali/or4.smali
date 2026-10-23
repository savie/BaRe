.class public final synthetic Lor4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lor4;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lor4;->b:Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lor4;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lor4;->b:Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget v0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->Z:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->Q()Lrr4;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    iget-object p0, p0, Lrr4;->q:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 15
    .line 16
    return-object p0

    .line 17
    :pswitch_0
    sget v0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->Z:I

    .line 18
    .line 19
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->Q()Lrr4;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    iget-object p0, p0, Lrr4;->f:Lzx2;

    .line 24
    .line 25
    return-object p0

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
