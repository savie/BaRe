.class public final synthetic Li01;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Li01;->a:Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;

    .line 5
    .line 6
    iput-boolean p2, p0, Li01;->b:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Li01;->a:Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;

    .line 2
    .line 3
    iget-object v0, p1, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->T:Lm01;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "mAdapter"

    .line 7
    .line 8
    if-eqz v0, :cond_4

    .line 9
    .line 10
    invoke-virtual {v0}, Lgm7;->l()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/Const;->L()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget-boolean p0, p0, Li01;->b:Z

    .line 25
    .line 26
    if-eqz p0, :cond_3

    .line 27
    .line 28
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->a0()Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/b;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    iget-object p1, p1, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->T:Lm01;

    .line 33
    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    invoke-virtual {p1}, Lgm7;->l()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/Const;->L()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    sget-object v0, Lyy7;->e:Lyy7;

    .line 51
    .line 52
    new-instance v1, Lz11;

    .line 53
    .line 54
    invoke-direct {v1, p1, v0}, Lz11;-><init>(Ljava/util/List;Lzy7;)V

    .line 55
    .line 56
    .line 57
    const-class p1, Lz11;

    .line 58
    .line 59
    invoke-virtual {p0, p1, v1}, Lqo0;->c(Ljava/lang/Class;Lpw6;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_2
    invoke-static {v2}, Lpe4;->F(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v1

    .line 67
    :cond_3
    iget-object p0, p1, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->a0:Lgv7;

    .line 68
    .line 69
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    check-cast p0, Laj0;

    .line 74
    .line 75
    iget-object p1, p1, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->b0:Lrb;

    .line 76
    .line 77
    invoke-virtual {p0, p1}, Laj0;->a(Lzi0;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_4
    invoke-static {v2}, Lpe4;->F(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw v1
.end method
