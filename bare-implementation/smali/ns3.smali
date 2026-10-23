.class public final Lns3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lns7;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Lkh5;

.field public final d:Lgv7;

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lkh5;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lns3;->a:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p2, p0, Lns3;->b:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p3, p0, Lns3;->c:Lkh5;

    .line 15
    .line 16
    new-instance p1, Lak;

    .line 17
    .line 18
    const/16 p2, 0x14

    .line 19
    .line 20
    invoke-direct {p1, p0, p2}, Lak;-><init>(Ljava/lang/Object;I)V

    .line 21
    .line 22
    .line 23
    new-instance p2, Lgv7;

    .line 24
    .line 25
    invoke-direct {p2, p1}, Lgv7;-><init>(Lbt3;)V

    .line 26
    .line 27
    .line 28
    iput-object p2, p0, Lns3;->d:Lgv7;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final L()Lis3;
    .locals 1

    .line 1
    iget-object p0, p0, Lns3;->d:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lms3;

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, v0}, Lms3;->a(Z)Lis3;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public final close()V
    .locals 1

    .line 1
    iget-object p0, p0, Lns3;->d:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lms3;

    .line 14
    .line 15
    invoke-virtual {p0}, Lms3;->close()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final getDatabaseName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lns3;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setWriteAheadLoggingEnabled(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lns3;->d:Lgv7;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgv7;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lms3;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iput-boolean p1, p0, Lns3;->e:Z

    .line 19
    .line 20
    return-void
.end method
