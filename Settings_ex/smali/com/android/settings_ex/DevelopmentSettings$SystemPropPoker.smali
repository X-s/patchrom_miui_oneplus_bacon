.class Lcom/android/settings_ex/DevelopmentSettings$SystemPropPoker;
.super Landroid/os/AsyncTask;
.source "DevelopmentSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DevelopmentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SystemPropPoker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2320
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 2322
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/DevelopmentSettings$SystemPropPoker;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 12
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v6, 0x0

    const/4 v11, 0x0

    .line 2325
    :try_start_0
    invoke-static {}, Landroid/os/ServiceManager;->listServices()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 2329
    .local v5, "services":[Ljava/lang/String;
    array-length v7, v5

    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v4, v5, v6

    .line 2330
    .local v4, "service":Ljava/lang/String;
    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 2331
    .local v3, "obj":Landroid/os/IBinder;
    if-eqz v3, :cond_0

    .line 2332
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2334
    .local v0, "data":Landroid/os/Parcel;
    const v8, 0x5f535052

    const/4 v9, 0x0

    const/4 v10, 0x0

    :try_start_1
    invoke-interface {v3, v8, v0, v9, v10}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2340
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2329
    .end local v0    # "data":Landroid/os/Parcel;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2326
    .end local v3    # "obj":Landroid/os/IBinder;
    .end local v4    # "service":Ljava/lang/String;
    .end local v5    # "services":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2327
    .local v1, "e":Landroid/os/RemoteException;
    return-object v11

    .line 2336
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "data":Landroid/os/Parcel;
    .restart local v3    # "obj":Landroid/os/IBinder;
    .restart local v4    # "service":Ljava/lang/String;
    .restart local v5    # "services":[Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 2337
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "DevelopmentSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Someone wrote a bad service \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2338
    const-string/jumbo v10, "\' that doesn\'t like to be poked: "

    .line 2337
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2335
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .restart local v1    # "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 2343
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "obj":Landroid/os/IBinder;
    .end local v4    # "service":Ljava/lang/String;
    :cond_1
    return-object v11
.end method
