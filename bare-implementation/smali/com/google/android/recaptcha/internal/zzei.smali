.class public final Lcom/google/android/recaptcha/internal/zzei;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final zza:Lcom/google/android/recaptcha/internal/zzeg;

.field private static final zzb:I

.field private static final zzc:Ljava/lang/String;

.field private static zzd:Lcom/google/android/recaptcha/internal/zzei;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/recaptcha/internal/zzeg;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/google/android/recaptcha/internal/zzeg;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/google/android/recaptcha/internal/zzei;->zza:Lcom/google/android/recaptcha/internal/zzeg;

    .line 8
    .line 9
    const-string v1, "18.6.1"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/google/android/recaptcha/internal/zzeg;->zza(Lcom/google/android/recaptcha/internal/zzeg;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    sput v2, Lcom/google/android/recaptcha/internal/zzei;->zzb:I

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/google/android/recaptcha/internal/zzeg;->zzb(Lcom/google/android/recaptcha/internal/zzeg;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lcom/google/android/recaptcha/internal/zzei;->zzc:Ljava/lang/String;

    .line 22
    .line 23
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    .line 1
    sget-object p2, Lcom/google/android/recaptcha/internal/zzei;->zzc:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    sget v1, Lcom/google/android/recaptcha/internal/zzei;->zzb:I

    .line 5
    .line 6
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final synthetic zzc()Lcom/google/android/recaptcha/internal/zzei;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/recaptcha/internal/zzei;->zzd:Lcom/google/android/recaptcha/internal/zzei;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic zze(Lcom/google/android/recaptcha/internal/zzei;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/google/android/recaptcha/internal/zzei;->zzd:Lcom/google/android/recaptcha/internal/zzei;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 1
    const-string p0, "CREATE TABLE ce (id INTEGER PRIMARY KEY,ts BIGINT NOT NULL,ss TEXT NOT NULL)"

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 1
    const-string p0, "DROP TABLE IF EXISTS ce"

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "CREATE TABLE ce (id INTEGER PRIMARY KEY,ts BIGINT NOT NULL,ss TEXT NOT NULL)"

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 1
    const-string p0, "DROP TABLE IF EXISTS ce"

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "CREATE TABLE ce (id INTEGER PRIMARY KEY,ts BIGINT NOT NULL,ss TEXT NOT NULL)"

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final zza(Ljava/util/List;)I
    .locals 6

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    sget-object v4, Lcom/google/android/recaptcha/internal/zzeh;->zza:Lcom/google/android/recaptcha/internal/zzeh;

    .line 10
    .line 11
    const/16 v5, 0x18

    .line 12
    .line 13
    const-string v1, ", "

    .line 14
    .line 15
    const-string v2, "("

    .line 16
    .line 17
    const-string v3, ")"

    .line 18
    .line 19
    move-object v0, p1

    .line 20
    invoke-static/range {v0 .. v5}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const-string v0, "id IN "

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const/4 v0, 0x0

    .line 35
    const-string v1, "ce"

    .line 36
    .line 37
    invoke-virtual {p0, v1, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    return p0
.end method

.method public final zzb()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "SELECT COUNT(*) FROM ce"

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/4 v0, -0x1

    .line 13
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 21
    .line 22
    .line 23
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 27
    .line 28
    .line 29
    throw v0

    .line 30
    :catch_0
    :cond_0
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 31
    .line 32
    .line 33
    return v0
.end method

.method public final zzd()Ljava/util/List;
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v6, 0x0

    .line 6
    const-string v7, "ts ASC"

    .line 7
    .line 8
    const-string v1, "ce"

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    :goto_0
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    const-string v1, "id"

    .line 30
    .line 31
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const-string v2, "ss"

    .line 40
    .line 41
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const-string v3, "ts"

    .line 50
    .line 51
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 56
    .line 57
    .line 58
    move-result-wide v3

    .line 59
    new-instance v5, Lcom/google/android/recaptcha/internal/zzej;

    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    invoke-direct {v5, v2, v3, v4, v1}, Lcom/google/android/recaptcha/internal/zzej;-><init>(Ljava/lang/String;JI)V

    .line 65
    .line 66
    .line 67
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    .line 72
    goto :goto_1

    .line 73
    :catch_0
    :try_start_1
    sget-object v0, Lov2;->a:Lov2;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    .line 75
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 76
    .line 77
    .line 78
    return-object v0

    .line 79
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 80
    .line 81
    .line 82
    throw v0
.end method

.method public final zzf(Lcom/google/android/recaptcha/internal/zzej;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/recaptcha/internal/zzei;->zza(Ljava/util/List;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/4 p1, 0x1

    .line 10
    if-ne p0, p1, :cond_0

    .line 11
    .line 12
    return p1

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method
