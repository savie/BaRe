.class public abstract Lyc6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static a()Ljava/util/ArrayList;
    .locals 15

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lzc6;

    .line 7
    .line 8
    const/4 v9, 0x0

    .line 9
    const/16 v10, 0xfc0

    .line 10
    .line 11
    const-string v2, "ID_BACKUP_ALL_APPS"

    .line 12
    .line 13
    const/16 v3, 0x65

    .line 14
    .line 15
    const v4, 0x7f130091

    .line 16
    .line 17
    .line 18
    const v5, 0x7f130092

    .line 19
    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v7, 0x0

    .line 23
    const/4 v8, 0x0

    .line 24
    invoke-direct/range {v1 .. v10}, Lzc6;-><init>(Ljava/lang/String;IIIZZZZI)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    new-instance v2, Lzc6;

    .line 31
    .line 32
    const/4 v10, 0x0

    .line 33
    const/16 v11, 0xf80

    .line 34
    .line 35
    const-string v3, "ID_BACKUP_PENDING_APPS"

    .line 36
    .line 37
    const/16 v4, 0x66

    .line 38
    .line 39
    const v5, 0x7f1300a1

    .line 40
    .line 41
    .line 42
    const v6, 0x7f1300a2

    .line 43
    .line 44
    .line 45
    const/4 v9, 0x1

    .line 46
    invoke-direct/range {v2 .. v11}, Lzc6;-><init>(Ljava/lang/String;IIIZZZZI)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    new-instance v3, Lzc6;

    .line 53
    .line 54
    const/4 v11, 0x0

    .line 55
    const/16 v12, 0xf80

    .line 56
    .line 57
    const-string v4, "ID_BACKUP_UPDATED_APPS"

    .line 58
    .line 59
    const/16 v5, 0x67

    .line 60
    .line 61
    const v6, 0x7f1300ba

    .line 62
    .line 63
    .line 64
    const v7, 0x7f1300bb

    .line 65
    .line 66
    .line 67
    const/4 v9, 0x0

    .line 68
    const/4 v10, 0x1

    .line 69
    invoke-direct/range {v3 .. v12}, Lzc6;-><init>(Ljava/lang/String;IIIZZZZI)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    new-instance v4, Lzc6;

    .line 76
    .line 77
    const/4 v12, 0x0

    .line 78
    const/16 v13, 0xf80

    .line 79
    .line 80
    const-string v5, "ID_BACKUP_REDO_APPS"

    .line 81
    .line 82
    const/16 v6, 0x68

    .line 83
    .line 84
    const v7, 0x7f130448

    .line 85
    .line 86
    .line 87
    const v8, 0x7f130449

    .line 88
    .line 89
    .line 90
    const/4 v10, 0x0

    .line 91
    const/4 v11, 0x1

    .line 92
    invoke-direct/range {v4 .. v13}, Lzc6;-><init>(Ljava/lang/String;IIIZZZZI)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    new-instance v5, Lzc6;

    .line 99
    .line 100
    const/4 v13, 0x0

    .line 101
    const/16 v14, 0x980

    .line 102
    .line 103
    const-string v6, "ID_BACKUP_SYNC_APPS"

    .line 104
    .line 105
    const/16 v7, 0x69

    .line 106
    .line 107
    const v8, 0x7f13055a

    .line 108
    .line 109
    .line 110
    const v9, 0x7f13055b

    .line 111
    .line 112
    .line 113
    const/4 v11, 0x0

    .line 114
    invoke-direct/range {v5 .. v14}, Lzc6;-><init>(Ljava/lang/String;IIIZZZZI)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    return-object v0
.end method

.method public static b()Ljava/util/ArrayList;
    .locals 13

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lzc6;

    .line 7
    .line 8
    const/4 v9, 0x0

    .line 9
    const/16 v10, 0xf80

    .line 10
    .line 11
    const-string v2, "ID_RESTORE_ALL_APPS"

    .line 12
    .line 13
    const/16 v3, 0xc9

    .line 14
    .line 15
    const v4, 0x7f13045c

    .line 16
    .line 17
    .line 18
    const v5, 0x7f13045d

    .line 19
    .line 20
    .line 21
    const/4 v6, 0x1

    .line 22
    const/4 v7, 0x1

    .line 23
    const/4 v8, 0x1

    .line 24
    invoke-direct/range {v1 .. v10}, Lzc6;-><init>(Ljava/lang/String;IIIZZZZI)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    new-instance v2, Lzc6;

    .line 31
    .line 32
    const/4 v10, 0x0

    .line 33
    const/16 v11, 0xf80

    .line 34
    .line 35
    const-string v3, "ID_RESTORE_MISSING_APPS"

    .line 36
    .line 37
    const/16 v4, 0xca

    .line 38
    .line 39
    const v5, 0x7f130469

    .line 40
    .line 41
    .line 42
    const v6, 0x7f13046a

    .line 43
    .line 44
    .line 45
    const/4 v9, 0x1

    .line 46
    invoke-direct/range {v2 .. v11}, Lzc6;-><init>(Ljava/lang/String;IIIZZZZI)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    new-instance v3, Lzc6;

    .line 53
    .line 54
    const/4 v11, 0x0

    .line 55
    const/16 v12, 0xf80

    .line 56
    .line 57
    const-string v4, "ID_RESTORE_NEW_VERSIONS_APPS"

    .line 58
    .line 59
    const/16 v5, 0xcb

    .line 60
    .line 61
    const v6, 0x7f13046b

    .line 62
    .line 63
    .line 64
    const v7, 0x7f13046c

    .line 65
    .line 66
    .line 67
    const/4 v10, 0x1

    .line 68
    invoke-direct/range {v3 .. v12}, Lzc6;-><init>(Ljava/lang/String;IIIZZZZI)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    return-object v0
.end method

.method public static c(Z)Ljava/util/ArrayList;
    .locals 12

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    new-instance v1, Lzc6;

    .line 10
    .line 11
    const/4 v9, 0x0

    .line 12
    const/16 v10, 0xfc2

    .line 13
    .line 14
    const-string v2, "ID_BACKUP_CALLS"

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    const v4, 0x7f130097

    .line 18
    .line 19
    .line 20
    const v5, 0x7f130098

    .line 21
    .line 22
    .line 23
    const/4 v6, 0x0

    .line 24
    const/4 v7, 0x0

    .line 25
    const/4 v8, 0x0

    .line 26
    invoke-direct/range {v1 .. v10}, Lzc6;-><init>(Ljava/lang/String;IIIZZZZI)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    new-instance v2, Lzc6;

    .line 33
    .line 34
    const/4 v10, 0x0

    .line 35
    const/16 v11, 0xf82

    .line 36
    .line 37
    const-string v3, "ID_RESTORE_CALLS"

    .line 38
    .line 39
    const/4 v4, 0x0

    .line 40
    const v5, 0x7f130461

    .line 41
    .line 42
    .line 43
    const v6, 0x7f130462

    .line 44
    .line 45
    .line 46
    const/4 v7, 0x1

    .line 47
    const/4 v9, 0x1

    .line 48
    invoke-direct/range {v2 .. v11}, Lzc6;-><init>(Ljava/lang/String;IIIZZZZI)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    return-object v0
.end method

.method public static d()Ljava/util/List;
    .locals 11

    .line 1
    new-instance v0, Lzc6;

    .line 2
    .line 3
    const/4 v8, 0x0

    .line 4
    const/16 v9, 0xfc2

    .line 5
    .line 6
    const-string v1, "ID_BACKUP_FOLDERS"

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const v3, 0x7f13009d

    .line 10
    .line 11
    .line 12
    const v4, 0x7f13009e

    .line 13
    .line 14
    .line 15
    const/4 v5, 0x0

    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v7, 0x0

    .line 18
    invoke-direct/range {v0 .. v9}, Lzc6;-><init>(Ljava/lang/String;IIIZZZZI)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Lzc6;

    .line 22
    .line 23
    const/4 v9, 0x0

    .line 24
    const/16 v10, 0xf82

    .line 25
    .line 26
    const-string v2, "ID_RESTORE_FOLDERS"

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    const v4, 0x7f130464

    .line 30
    .line 31
    .line 32
    const v5, 0x7f130465

    .line 33
    .line 34
    .line 35
    const/4 v6, 0x1

    .line 36
    const/4 v8, 0x1

    .line 37
    invoke-direct/range {v1 .. v10}, Lzc6;-><init>(Ljava/lang/String;IIIZZZZI)V

    .line 38
    .line 39
    .line 40
    filled-new-array {v0, v1}, [Lzc6;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    return-object v0
.end method

.method public static e(Z)Ljava/util/ArrayList;
    .locals 12

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    new-instance v1, Lzc6;

    .line 10
    .line 11
    const/4 v9, 0x0

    .line 12
    const/16 v10, 0xfc2

    .line 13
    .line 14
    const-string v2, "ID_BACKUP_MESSAGES"

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    const v4, 0x7f13009f

    .line 18
    .line 19
    .line 20
    const v5, 0x7f1300a0

    .line 21
    .line 22
    .line 23
    const/4 v6, 0x0

    .line 24
    const/4 v7, 0x0

    .line 25
    const/4 v8, 0x0

    .line 26
    invoke-direct/range {v1 .. v10}, Lzc6;-><init>(Ljava/lang/String;IIIZZZZI)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    new-instance v2, Lzc6;

    .line 33
    .line 34
    const/4 v10, 0x0

    .line 35
    const/16 v11, 0xf82

    .line 36
    .line 37
    const-string v3, "ID_RESTORE_MESSAGES"

    .line 38
    .line 39
    const/4 v4, 0x0

    .line 40
    const v5, 0x7f130467

    .line 41
    .line 42
    .line 43
    const v6, 0x7f130468

    .line 44
    .line 45
    .line 46
    const/4 v7, 0x1

    .line 47
    const/4 v9, 0x1

    .line 48
    invoke-direct/range {v2 .. v11}, Lzc6;-><init>(Ljava/lang/String;IIIZZZZI)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    return-object v0
.end method

.method public static f()Ljava/util/ArrayList;
    .locals 12

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lzc6;

    .line 7
    .line 8
    const/4 v9, 0x1

    .line 9
    const/16 v10, 0xf00

    .line 10
    .line 11
    const-string v2, "ID_DELETE_BACKUPS_UNINSTALLED_APPS"

    .line 12
    .line 13
    const/16 v3, 0x12d

    .line 14
    .line 15
    const v4, 0x7f1301e9

    .line 16
    .line 17
    .line 18
    const v5, 0x7f1301ea

    .line 19
    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v7, 0x0

    .line 23
    const/4 v8, 0x1

    .line 24
    invoke-direct/range {v1 .. v10}, Lzc6;-><init>(Ljava/lang/String;IIIZZZZI)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    new-instance v2, Lzc6;

    .line 31
    .line 32
    const/4 v10, 0x0

    .line 33
    const/16 v11, 0xf00

    .line 34
    .line 35
    const-string v3, "ID_ENABLE_DISABLE_APPS_APPS"

    .line 36
    .line 37
    const/16 v4, 0x12e

    .line 38
    .line 39
    const v5, 0x7f130218

    .line 40
    .line 41
    .line 42
    const v6, 0x7f1301ff

    .line 43
    .line 44
    .line 45
    const/4 v9, 0x0

    .line 46
    invoke-direct/range {v2 .. v11}, Lzc6;-><init>(Ljava/lang/String;IIIZZZZI)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    return-object v0
.end method

.method public static g()Ljava/util/Set;
    .locals 3

    .line 1
    const/16 v0, 0x65

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/16 v1, 0xc9

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    filled-new-array {v0, v1}, [Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lx50;->A0([Ljava/lang/Object;)Ljava/util/Set;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Ljava/util/ArrayList;

    .line 22
    .line 23
    const/16 v2, 0xa

    .line 24
    .line 25
    invoke-static {v0, v2}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Ljava/lang/Number;

    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    invoke-static {v1}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    sget-object v1, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 65
    .line 66
    if-eqz v1, :cond_4

    .line 67
    .line 68
    const-string v2, "pinned_actions"

    .line 69
    .line 70
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    if-nez v0, :cond_1

    .line 75
    .line 76
    sget-object v0, Lsv2;->a:Lsv2;

    .line 77
    .line 78
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-eqz v2, :cond_3

    .line 92
    .line 93
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    check-cast v2, Ljava/lang/String;

    .line 98
    .line 99
    invoke-static {v2}, Luq7;->X(Ljava/lang/String;)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    if-eqz v2, :cond_2

    .line 104
    .line 105
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_3
    invoke-static {v1}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    return-object v0

    .line 114
    :cond_4
    const-string v0, "prefs"

    .line 115
    .line 116
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    const/4 v0, 0x0

    .line 120
    throw v0
.end method

.method public static h(Ljava/lang/String;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    const-string v1, "APPS"

    .line 5
    .line 6
    invoke-static {p0, v1, v0}, Luq7;->O(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-ne p0, v1, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    return v0
.end method

.method public static i(Ljava/lang/String;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    const-string v1, "CALLS"

    .line 5
    .line 6
    invoke-static {p0, v1, v0}, Luq7;->O(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-ne p0, v1, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    return v0
.end method

.method public static j(Ljava/lang/String;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    const-string v1, "MESSAGES"

    .line 5
    .line 6
    invoke-static {p0, v1, v0}, Luq7;->O(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-ne p0, v1, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    return v0
.end method

.method public static k(Ljava/util/Set;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-static {p0, v1}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/lang/Number;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-static {v0}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    sget-object v0, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    const-string v1, "pinned_actions"

    .line 49
    .line 50
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_1
    const-string p0, "editor"

    .line 59
    .line 60
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const/4 p0, 0x0

    .line 64
    throw p0
.end method
