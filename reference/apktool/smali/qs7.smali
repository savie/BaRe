.class public final Lqs7;
.super Lus7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final d:Lss7;


# direct methods
.method public constructor <init>(Lis3;Ljava/lang/String;Lss7;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Lus7;-><init>(Lis3;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iput-object p3, p0, Lqs7;->d:Lss7;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final C(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lqs7;->d:Lss7;

    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Lss7;->C(ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final F()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lqs7;->d:Lss7;

    .line 2
    .line 3
    invoke-interface {p0}, Lnw6;->F()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final R(I)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lqs7;->d:Lss7;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lss7;->R(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final close()V
    .locals 0

    .line 1
    iget-object p0, p0, Lqs7;->d:Lss7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lss7;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final e(IJ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lqs7;->d:Lss7;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lss7;->e(IJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final f(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lqs7;->d:Lss7;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lss7;->f(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getColumnCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lqs7;->d:Lss7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lss7;->getColumnCount()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getColumnName(I)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lqs7;->d:Lss7;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lss7;->getColumnName(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getLong(I)J
    .locals 0

    .line 1
    iget-object p0, p0, Lqs7;->d:Lss7;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lss7;->getLong(I)J

    .line 4
    .line 5
    .line 6
    move-result-wide p0

    .line 7
    return-wide p0
.end method

.method public final i()V
    .locals 0

    .line 1
    iget-object p0, p0, Lqs7;->d:Lss7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lss7;->i()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final i0()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lqs7;->d:Lss7;

    .line 2
    .line 3
    invoke-virtual {v0}, Lss7;->i0()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v2}, Lss7;->R(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v2, "wal"

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-object p0, p0, Lus7;->a:Lis3;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object p0, p0, Lis3;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z

    .line 25
    .line 26
    .line 27
    return v1

    .line 28
    :cond_0
    iget-object p0, p0, Lis3;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->disableWriteAheadLogging()V

    .line 31
    .line 32
    .line 33
    return v1
.end method

.method public final isNull(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lqs7;->d:Lss7;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lss7;->isNull(I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final reset()V
    .locals 0

    .line 1
    iget-object p0, p0, Lqs7;->d:Lss7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lss7;->reset()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
