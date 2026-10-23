.class public final Lkr7;
.super Ljava/io/File;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p1}, Lcom/topjohnwu/superuser/ShellUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lkr7;->a:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 19
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lkr7;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    sget v0, Lcom/topjohnwu/superuser/Shell;->UNKNOWN:I

    .line 2
    .line 3
    invoke-static {}, Lk55;->j()Lzd7;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "@@"

    .line 8
    .line 9
    iget-object p0, p0, Lkr7;->a:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1, v1, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    filled-new-array {p0}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {v0, p0}, Lcom/topjohnwu/superuser/ShellUtils;->fastCmd(Lcom/topjohnwu/superuser/Shell;[Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget v0, Lcom/topjohnwu/superuser/Shell;->UNKNOWN:I

    .line 2
    .line 3
    invoke-static {}, Lk55;->j()Lzd7;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "@@"

    .line 8
    .line 9
    iget-object p0, p0, Lkr7;->a:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1, v1, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    filled-new-array {p0}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {v0}, Lzd7;->newJob()Lod7;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1, p0}, Lod7;->a([Ljava/lang/String;)Lrh4;

    .line 24
    .line 25
    .line 26
    move-object p0, p1

    .line 27
    check-cast p0, Lrh4;

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lrh4;->a:Ljava/util/List;

    .line 31
    .line 32
    iput-object v0, p0, Lrh4;->b:Ljava/util/List;

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lrh4;->e:Z

    .line 36
    .line 37
    invoke-virtual {p1}, Lod7;->b()Lgn6;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    iget p0, p0, Lgn6;->c:I

    .line 42
    .line 43
    if-nez p0, :cond_0

    .line 44
    .line 45
    const/4 p0, 0x1

    .line 46
    return p0

    .line 47
    :cond_0
    return v0
.end method

.method public final c(Ljava/lang/String;)Lkr7;
    .locals 2

    .line 1
    new-instance v0, Lkr7;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance v1, Ljava/io/File;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Lkr7;-><init>(Ljava/io/File;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public final canExecute()Z
    .locals 1

    .line 1
    const-string v0, "[ -x @@ ]"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lkr7;->b(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final canRead()Z
    .locals 1

    .line 1
    const-string v0, "[ -r @@ ]"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lkr7;->b(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final canWrite()Z
    .locals 1

    .line 1
    const-string v0, "[ -w @@ ]"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lkr7;->b(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final createNewFile()Z
    .locals 1

    .line 1
    const-string v0, "[ ! -e @@ ] && echo -n > @@"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lkr7;->b(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final d()[Lkr7;
    .locals 5

    .line 1
    const-string v0, "[ -d @@ ]"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lkr7;->b(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    invoke-virtual {p0, v1}, Lkr7;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    return-object v1

    .line 18
    :cond_1
    array-length v1, v0

    .line 19
    new-array v2, v1, [Lkr7;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    :goto_0
    if-ge v3, v1, :cond_2

    .line 23
    .line 24
    aget-object v4, v0, v3

    .line 25
    .line 26
    invoke-virtual {p0, v4}, Lkr7;->c(Ljava/lang/String;)Lkr7;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    aput-object v4, v2, v3

    .line 31
    .line 32
    add-int/lit8 v3, v3, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    return-object v2
.end method

.method public final delete()Z
    .locals 1

    .line 1
    const-string v0, "rm -f @@ || rmdir -f @@"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lkr7;->b(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final deleteOnExit()V
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "Unsupported SuFile operation"

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public final e(IZZ)Z
    .locals 5

    .line 1
    const-string v0, "stat -c \'%a\' @@"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lkr7;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    array-length v1, v0

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x3

    .line 14
    if-eq v1, v3, :cond_0

    .line 15
    .line 16
    return v2

    .line 17
    :cond_0
    :goto_0
    if-ge v2, v3, :cond_3

    .line 18
    .line 19
    aget-char v1, v0, v2

    .line 20
    .line 21
    add-int/lit8 v1, v1, -0x30

    .line 22
    .line 23
    if-eqz p2, :cond_2

    .line 24
    .line 25
    if-eqz p3, :cond_1

    .line 26
    .line 27
    if-nez v2, :cond_2

    .line 28
    .line 29
    :cond_1
    or-int/2addr v1, p1

    .line 30
    goto :goto_1

    .line 31
    :cond_2
    not-int v4, p1

    .line 32
    and-int/2addr v1, v4

    .line 33
    :goto_1
    add-int/lit8 v1, v1, 0x30

    .line 34
    .line 35
    int-to-char v1, v1

    .line 36
    aput-char v1, v0, v2

    .line 37
    .line 38
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string p2, "chmod "

    .line 44
    .line 45
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    new-instance p2, Ljava/lang/String;

    .line 49
    .line 50
    invoke-direct {p2, v0}, Ljava/lang/String;-><init>([C)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string p2, " @@"

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p0, p1}, Lkr7;->b(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    return p0
.end method

.method public final exists()Z
    .locals 1

    .line 1
    const-string v0, "[ -e @@ ]"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lkr7;->b(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final f(Ljava/lang/String;)J
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "stat -fc \'%S "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string p1, "\' @@"

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, p1}, Lkr7;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const-string p1, " "

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    array-length p1, p0

    .line 31
    const/4 v0, 0x2

    .line 32
    if-eq p1, v0, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 p1, 0x0

    .line 36
    :try_start_0
    aget-object p1, p0, p1

    .line 37
    .line 38
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    const/4 p1, 0x1

    .line 43
    aget-object p0, p0, p1

    .line 44
    .line 45
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 46
    .line 47
    .line 48
    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    mul-long/2addr v0, p0

    .line 50
    return-wide v0

    .line 51
    :catch_0
    :goto_0
    const-wide p0, 0x7fffffffffffffffL

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    return-wide p0
.end method

.method public final getAbsoluteFile()Ljava/io/File;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final getAbsolutePath()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final getCanonicalFile()Ljava/io/File;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkr7;->getCanonicalPath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Lkr7;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lkr7;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final getCanonicalPath()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "readlink -f @@"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lkr7;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    return-object v0
.end method

.method public final getFreeSpace()J
    .locals 2

    .line 1
    const-string v0, "%f"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lkr7;->f(Ljava/lang/String;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final getParentFile()Ljava/io/File;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    new-instance v0, Lkr7;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lkr7;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public final getTotalSpace()J
    .locals 2

    .line 1
    const-string v0, "%b"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lkr7;->f(Ljava/lang/String;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final getUsableSpace()J
    .locals 2

    .line 1
    const-string v0, "%a"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lkr7;->f(Ljava/lang/String;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final isDirectory()Z
    .locals 1

    .line 1
    const-string v0, "[ -d @@ ]"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lkr7;->b(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isFile()Z
    .locals 1

    .line 1
    const-string v0, "[ -f @@ ]"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lkr7;->b(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final lastModified()J
    .locals 4

    .line 1
    :try_start_0
    const-string v0, "stat -c \'%Y\' @@"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lkr7;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    const-wide/16 v2, 0x3e8

    .line 12
    .line 13
    mul-long/2addr v0, v2

    .line 14
    return-wide v0

    .line 15
    :catch_0
    const-wide/16 v0, 0x0

    .line 16
    .line 17
    return-wide v0
.end method

.method public final length()J
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "stat -c \'%s\' @@"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lkr7;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return-wide v0

    .line 12
    :catch_0
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    return-wide v0
.end method

.method public final list()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 119
    invoke-virtual {p0, v0}, Lkr7;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final list(Ljava/io/FilenameFilter;)[Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "[ -d @@ ]"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lkr7;->b(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v2, "ls -a "

    .line 14
    .line 15
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lkr7;->a:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sget v2, Lcom/topjohnwu/superuser/Shell;->UNKNOWN:I

    .line 28
    .line 29
    invoke-static {}, Lk55;->j()Lzd7;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    new-instance v3, Lrh4;

    .line 34
    .line 35
    invoke-direct {v3, v2}, Lrh4;-><init>(Lzd7;)V

    .line 36
    .line 37
    .line 38
    filled-new-array {v0}, [Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v3, v0}, Lrh4;->a([Ljava/lang/String;)Lrh4;

    .line 43
    .line 44
    .line 45
    new-instance v0, Ljava/util/LinkedList;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object v0, v3, Lrh4;->a:Ljava/util/List;

    .line 51
    .line 52
    iput-object v1, v3, Lrh4;->b:Ljava/util/List;

    .line 53
    .line 54
    const/4 v0, 0x1

    .line 55
    iput-boolean v0, v3, Lrh4;->e:Z

    .line 56
    .line 57
    invoke-virtual {v3}, Lrh4;->b()Lgn6;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lgn6;->a()Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_3

    .line 74
    .line 75
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    check-cast v2, Ljava/lang/String;

    .line 80
    .line 81
    const-string v3, "."

    .line 82
    .line 83
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-nez v3, :cond_2

    .line 88
    .line 89
    const-string v3, ".."

    .line 90
    .line 91
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-nez v3, :cond_2

    .line 96
    .line 97
    if-eqz p1, :cond_1

    .line 98
    .line 99
    invoke-interface {p1, p0, v2}, Ljava/io/FilenameFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-nez v2, :cond_1

    .line 104
    .line 105
    :cond_2
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_3
    const/4 p0, 0x0

    .line 110
    new-array p0, p0, [Ljava/lang/String;

    .line 111
    .line 112
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    check-cast p0, [Ljava/lang/String;

    .line 117
    .line 118
    return-object p0
.end method

.method public final bridge synthetic listFiles()[Ljava/io/File;
    .locals 0

    .line 53
    invoke-virtual {p0}, Lkr7;->d()[Lkr7;

    move-result-object p0

    return-object p0
.end method

.method public final listFiles(Ljava/io/FileFilter;)[Ljava/io/File;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lkr7;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    array-length v2, v1

    .line 15
    const/4 v3, 0x0

    .line 16
    move v4, v3

    .line 17
    :goto_0
    if-ge v4, v2, :cond_3

    .line 18
    .line 19
    aget-object v5, v1, v4

    .line 20
    .line 21
    invoke-virtual {p0, v5}, Lkr7;->c(Ljava/lang/String;)Lkr7;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    invoke-interface {p1, v5}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    if-eqz v6, :cond_2

    .line 32
    .line 33
    :cond_1
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_3
    new-array p0, v3, [Lkr7;

    .line 40
    .line 41
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    check-cast p0, [Lkr7;

    .line 46
    .line 47
    return-object p0
.end method

.method public final listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;
    .locals 4

    .line 48
    const-string v0, "[ -d @@ ]"

    invoke-virtual {p0, v0}, Lkr7;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p0, p1}, Lkr7;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :goto_0
    const/4 p0, 0x0

    return-object p0

    .line 50
    :cond_1
    array-length v0, p1

    .line 51
    new-array v1, v0, [Lkr7;

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    .line 52
    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Lkr7;->c(Ljava/lang/String;)Lkr7;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method public final mkdir()Z
    .locals 1

    .line 1
    const-string v0, "mkdir @@"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lkr7;->b(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final mkdirs()Z
    .locals 1

    .line 1
    const-string v0, "mkdir -p @@"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lkr7;->b(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final renameTo(Ljava/io/File;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "mv -f "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lkr7;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p0, " "

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {p0}, Lcom/topjohnwu/superuser/ShellUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    sget p1, Lcom/topjohnwu/superuser/Shell;->UNKNOWN:I

    .line 34
    .line 35
    invoke-static {}, Lk55;->j()Lzd7;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    filled-new-array {p0}, [Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p1}, Lzd7;->newJob()Lod7;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1, p0}, Lod7;->a([Ljava/lang/String;)Lrh4;

    .line 48
    .line 49
    .line 50
    move-object p0, p1

    .line 51
    check-cast p0, Lrh4;

    .line 52
    .line 53
    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lrh4;->a:Ljava/util/List;

    .line 55
    .line 56
    iput-object v0, p0, Lrh4;->b:Ljava/util/List;

    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lrh4;->e:Z

    .line 60
    .line 61
    invoke-virtual {p1}, Lod7;->b()Lgn6;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    iget p0, p0, Lgn6;->c:I

    .line 66
    .line 67
    if-nez p0, :cond_0

    .line 68
    .line 69
    const/4 p0, 0x1

    .line 70
    return p0

    .line 71
    :cond_0
    return v0
.end method

.method public final setExecutable(ZZ)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0, p1, p2}, Lkr7;->e(IZZ)Z

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public final setLastModified(J)Z
    .locals 3

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string v1, "yyyyMMddHHmm"

    .line 4
    .line 5
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Ljava/util/Date;

    .line 11
    .line 12
    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    new-instance p2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v0, "[ -e @@ ] && touch -t "

    .line 22
    .line 23
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p1, " @@"

    .line 30
    .line 31
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p0, p1}, Lkr7;->b(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    return p0
.end method

.method public final setReadOnly()Z
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1, v1}, Lkr7;->e(IZZ)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, v0, v1, v1}, Lkr7;->e(IZZ)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    return v0

    .line 17
    :cond_0
    return v1
.end method

.method public final setReadable(ZZ)Z
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0, p1, p2}, Lkr7;->e(IZZ)Z

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public final setWritable(ZZ)Z
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0, p1, p2}, Lkr7;->e(IZZ)Z

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method
