.class public final synthetic Lj47;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:Lq47;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lq47;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj47;->a:Lq47;

    .line 5
    .line 6
    iput-object p2, p0, Lj47;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lj47;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Lc47;->a:Lc47;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc47;->c()Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lj47;->b:Ljava/lang/String;

    .line 8
    .line 9
    iget v2, p0, Lj47;->c:I

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->withScheduleMoved(Ljava/lang/String;I)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object p0, p0, Lj47;->a:Lq47;

    .line 16
    .line 17
    invoke-static {p0, v0}, Lq47;->k(Lq47;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;)V

    .line 18
    .line 19
    .line 20
    sget-object p0, Lbe8;->a:Lbe8;

    .line 21
    .line 22
    return-object p0
.end method
