class ClientsController < ApplicationController

  def index
    @clients = User.all
    clients = []

=begin
    if params[:search].present?
      if params[:search] ==""
        @clients = User.all
      else
        @clients = @clients.where("name like ? OR username like ?  OR last_name like ? OR email like ?", "%#{params[:search]}%","%#{params[:search]}%","%#{params[:search]}%","%#{params[:search]}%")

      end

      if @clients.empty?
        client = {
            id: "",
            username:"",
            name:"",
            last_name:"",
            shoe_size:""
        }
      else
        @clients.each do |c|
          client = {
              id: c.id ,
              username:c.username,
              name:c.name,
              last_name:c.last_name,
              shoe_size:c.shoe_size,
          }
          clients.push(client)
        end


      end
      render :json => {:done => true,:clients=>clients}
    end
=end
    @clients = @clients.paginate(page:params[:page],per_page:20)

  end

  def edit
    @clients = User.find(params[:id])
  end

  def show
    @client = User.find(params[:id])
  end

  def deactivate
    user = User.find(params[:id])

    if user.update(is_active:false)
      flash.now[:notice] = "Usuario desactivado exitosamente"
      @clients = User.all
      redirect_to clients_path

    end

  end

  def add_clases

    @client = User.find(params[:id])

    if  @client.clases.nil?
    sum = params[:clases]
    else
      sum = @client.clases + params[:clases]
    end

    if @client.update(clases:sum)
      render json: {done:true}
    end

  end

  def remove_clases



    @client = User.find(params[:id])
    if  @client.clases.nil?
      tot = 0
    else
      tot = @client.clases - params[:clases]
      tot < 0 ? tot=0 : tot
    end

    if @client.update(clases:tot)
      render json: {done:true}
    end

  end

  def search_clients
    @clients = User.all
    clients = []
    if params[:search].present?



        @clients = @clients.where("name like ? OR username like ?  OR last_name like ? OR email like ?", "%#{params[:search]}%","%#{params[:search]}%","%#{params[:search]}%","%#{params[:search]}%")




    else
      @clients = User.all
    end
    if @clients.empty?
      client = {
          id: "",
          username:"",
          name:"",
          last_name:"",
          shoe_size:""
      }
    else
      @clients.each do |c|
        client = {
            id: c.id ,
            username:c.username,
            name:c.name,
            last_name:c.last_name,
            shoe_size:c.shoe_size,
        }
        clients.push(client)
      end


    end
    @clients = @clients.paginate(page:params[:page],per_page:20)
    render :json => {:done => true,:clients=>clients}
  end




end
