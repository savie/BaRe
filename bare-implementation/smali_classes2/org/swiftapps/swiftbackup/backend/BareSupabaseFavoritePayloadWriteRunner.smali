.class public final Lorg/swiftapps/swiftbackup/backend/BareSupabaseFavoritePayloadWriteRunner;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;

# Mirrors the current complete Firebase favoriteApps root to Supabase.
# Runs after explicit favorite add/remove; Firebase remains canonical.
.method public constructor <init>()V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public final run()V
    .locals 8

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sget-object v1, Lv53;->c:Ljava/util/LinkedHashMap;
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;
    move-result-object v1
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    move-result-object v1

    :favorite_loop
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :favorite_done

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lorg/swiftapps/swiftbackup/appslist/data/FavoriteApp;

    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/appslist/data/FavoriteApp;->getPackageId()Ljava/lang/String;
    move-result-object v3
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/appslist/data/FavoriteApp;->getName()Ljava/lang/String;
    move-result-object v4
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/appslist/data/FavoriteApp;->getPackageName()Ljava/lang/String;
    move-result-object v5

    new-instance v6, Lorg/json/JSONObject;
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "name"
    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v7, "packageName"
    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    goto :favorite_loop

    :favorite_done
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    move-result-object v1

    const-string v2, "favoriteApps"
    invoke-static {v2, v1}, Lorg/swiftapps/swiftbackup/backend/BareSupabaseMetadataStore;->writeUserPayload(Ljava/lang/String;Ljava/lang/String;)Laf3;
    move-result-object v0
    return-void

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :favorite_failed

    :favorite_failed
    move-exception v0
    const-string v1, "BΛR☰Backend"
    const-string v2, "Supabase favoriteApps mirror write failed; Firebase remains canonical."
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    return-void
.end method
