.class public final synthetic Lno1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmo1;
.implements Lcom/nimbusds/jose/shaded/gson/internal/ObjectConstructor;
.implements Ldv7;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lno1;->a:Ljava/lang/Object;

    .line 2
    .line 3
    iput-object p2, p0, Lno1;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public construct()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lno1;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/nimbusds/jose/shaded/gson/InstanceCreator;

    .line 4
    .line 5
    iget-object p0, p0, Lno1;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Ljava/lang/reflect/Type;

    .line 8
    .line 9
    invoke-static {v0, p0}, Lcom/nimbusds/jose/shaded/gson/internal/ConstructorConstructor;->c(Lcom/nimbusds/jose/shaded/gson/InstanceCreator;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public g()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lno1;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lfg8;

    .line 4
    .line 5
    iget-object p0, p0, Lno1;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Loe0;

    .line 8
    .line 9
    iget-object v0, v0, Lfg8;->c:Lmw6;

    .line 10
    .line 11
    invoke-virtual {v0}, Lmw6;->a()Landroid/database/sqlite/SQLiteDatabase;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 16
    .line 17
    .line 18
    :try_start_0
    invoke-static {v1, p0}, Lmw6;->b(Landroid/database/sqlite/SQLiteDatabase;Loe0;)Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    if-nez p0, :cond_0

    .line 23
    .line 24
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v0}, Lmw6;->a()Landroid/database/sqlite/SQLiteDatabase;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v2, "SELECT 1 FROM events WHERE context_id = ? LIMIT 1"

    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    filled-new-array {p0}, [Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {v0, v2, p0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 42
    .line 43
    .line 44
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 50
    .line 51
    .line 52
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 53
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 54
    .line 55
    .line 56
    move-object p0, v0

    .line 57
    :goto_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 61
    .line 62
    .line 63
    return-object p0

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    goto :goto_1

    .line 66
    :catchall_1
    move-exception v0

    .line 67
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 68
    .line 69
    .line 70
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 71
    :goto_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 72
    .line 73
    .line 74
    throw p0
.end method

.method public m(Lpp0;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lno1;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    .line 5
    iget-object p0, p0, Lno1;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lun1;

    .line 8
    .line 9
    :try_start_0
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lun1;->f:Lmo1;

    .line 13
    .line 14
    invoke-interface {p0, p1}, Lmo1;->m(Lpp0;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 19
    .line 20
    .line 21
    return-object p0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 24
    .line 25
    .line 26
    throw p0
.end method
