.class public final Lag6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lau4;


# instance fields
.field public final a:Lwx6;


# direct methods
.method public constructor <init>(Lwx6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lag6;->a:Lwx6;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final g(Lfu4;Lrt4;)V
    .locals 4

    .line 1
    sget-object v0, Lrt4;->ON_CREATE:Lrt4;

    .line 2
    .line 3
    if-ne p2, v0, :cond_7

    .line 4
    .line 5
    invoke-interface {p1}, Lfu4;->getLifecycle()Lhu4;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1, p0}, Lhu4;->f(Leu4;)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lag6;->a:Lwx6;

    .line 13
    .line 14
    invoke-interface {p0}, Lwx6;->getSavedStateRegistry()Lot9;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string p2, "androidx.savedstate.Restarter"

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Lot9;->c(Ljava/lang/String;)Landroid/os/Bundle;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    goto/16 :goto_2

    .line 27
    .line 28
    :cond_0
    const-string p2, "classes_to_restore"

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-eqz p1, :cond_6

    .line 35
    .line 36
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    if-eqz p2, :cond_5

    .line 45
    .line 46
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    check-cast p2, Ljava/lang/String;

    .line 51
    .line 52
    const-string v0, "Class "

    .line 53
    .line 54
    :try_start_0
    const-class v1, Lag6;

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const/4 v2, 0x0

    .line 61
    invoke-static {p2, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const-class v2, Ltx6;

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 72
    .line 73
    .line 74
    const/4 v2, 0x0

    .line 75
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 76
    .line 77
    .line 78
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 79
    const/4 v1, 0x1

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 81
    .line 82
    .line 83
    :try_start_2
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    check-cast v0, Ltx6;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 91
    .line 92
    instance-of p2, p0, Lzl8;

    .line 93
    .line 94
    if-eqz p2, :cond_4

    .line 95
    .line 96
    move-object p2, p0

    .line 97
    check-cast p2, Lzl8;

    .line 98
    .line 99
    invoke-interface {p2}, Lzl8;->getViewModelStore()Lyl8;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-interface {p0}, Lwx6;->getSavedStateRegistry()Lot9;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    iget-object p2, p2, Lyl8;->a:Ljava/util/LinkedHashMap;

    .line 111
    .line 112
    new-instance v1, Ljava/util/HashSet;

    .line 113
    .line 114
    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-eqz v2, :cond_3

    .line 130
    .line 131
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    check-cast v2, Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    check-cast v2, Ltl8;

    .line 145
    .line 146
    if-nez v2, :cond_2

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_2
    invoke-interface {p0}, Lfu4;->getLifecycle()Lhu4;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    invoke-static {v2, v0, v3}, Lpe4;->e(Ltl8;Lot9;Lhu4;)V

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_3
    new-instance v1, Ljava/util/HashSet;

    .line 158
    .line 159
    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    invoke-direct {v1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    .line 167
    .line 168
    .line 169
    move-result p2

    .line 170
    if-nez p2, :cond_1

    .line 171
    .line 172
    invoke-virtual {v0}, Lot9;->i()V

    .line 173
    .line 174
    .line 175
    goto/16 :goto_0

    .line 176
    .line 177
    :cond_4
    const-string p1, "Internal error: OnRecreation should be registered only on components that implement ViewModelStoreOwner. Received owner: "

    .line 178
    .line 179
    invoke-static {p0, p1}, Lq;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    return-void

    .line 183
    :catch_0
    move-exception p0

    .line 184
    const-string p1, "Failed to instantiate "

    .line 185
    .line 186
    invoke-static {p1, p2}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-static {p1, p0}, Le6;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    .line 192
    .line 193
    return-void

    .line 194
    :catch_1
    move-exception p0

    .line 195
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 196
    .line 197
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p2

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    const-string p2, " must have default constructor in order to be automatically recreated"

    .line 210
    .line 211
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p2

    .line 218
    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 219
    .line 220
    .line 221
    throw p1

    .line 222
    :catch_2
    move-exception p0

    .line 223
    const-string p1, " wasn\'t found"

    .line 224
    .line 225
    invoke-static {v0, p2, p1}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    invoke-static {p1, p0}, Le6;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 230
    .line 231
    .line 232
    :cond_5
    :goto_2
    return-void

    .line 233
    :cond_6
    const-string p0, "SavedState with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\""

    .line 234
    .line 235
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    return-void

    .line 239
    :cond_7
    const-string p0, "Next event must be ON_CREATE"

    .line 240
    .line 241
    invoke-static {p0}, Le6;->e(Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    return-void
.end method
