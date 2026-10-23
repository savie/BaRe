.class public final synthetic Lf57;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lj57;

.field public final synthetic c:Lorg/swiftapps/swiftbackup/home/schedule/data/b;


# direct methods
.method public synthetic constructor <init>(ZLj57;Lorg/swiftapps/swiftbackup/home/schedule/data/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lf57;->a:Z

    .line 5
    .line 6
    iput-object p2, p0, Lf57;->b:Lj57;

    .line 7
    .line 8
    iput-object p3, p0, Lf57;->c:Lorg/swiftapps/swiftbackup/home/schedule/data/b;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lf57;->a:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lf57;->b:Lj57;

    .line 6
    .line 7
    iget-object p1, p1, Lj57;->q:Lpx;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lf57;->c:Lorg/swiftapps/swiftbackup/home/schedule/data/b;

    .line 12
    .line 13
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->q:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;

    .line 14
    .line 15
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->getItemId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p1, p0}, Lpx;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
